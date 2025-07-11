#!/bin/bash

set -e  # Exit jika ada error
set -o pipefail

echo "🟡 [init.sh] Memulai setup container Laravel..."

cd /var/www/html || exit 1

# ====================================
# 1. Copy .env jika belum ada
# ====================================
if [ ! -f .env ]; then
  echo "📄 Menyalin .env dari .env.example"
  cp .env.example .env
fi

# ====================================
# 2. Tunggu koneksi ke database MySQL
# ====================================
echo "⏳ Menunggu koneksi ke database..."
until php artisan migrate:status > /dev/null 2>&1; do
  >&2 echo "🕐 Database belum siap... retry dalam 3 detik"
  sleep 3
done

# ====================================
# 3. Install composer dependencies
# ====================================
echo "📦 Menjalankan composer install..."
composer install --no-dev --optimize-autoloader

# ====================================
# 4. Set permission folder penting
# ====================================
echo "🔐 Mengatur permission folder storage dan cache..."
chown -R www-data:www-data storage bootstrap/cache
chmod -R 775 storage bootstrap/cache

# ====================================
# 5. Artisan commands (safe)
# ====================================
echo "⚙️ Artisan commands..."
php artisan key:generate --force || echo "❌ Gagal generate key"
php artisan config:clear || true
php artisan config:cache || true
php artisan route:cache || true
php artisan view:cache || true
php artisan migrate --force || echo "⚠️ Migrate gagal (mungkin sudah dilakukan)"

echo "✅ Laravel siap diakses di http://localhost:9001 🚀"

# ====================================
# 6. Jalankan PHP-FPM foreground
# ====================================
exec php-fpm

