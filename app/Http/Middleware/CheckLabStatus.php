<?php

namespace App\Http\Middleware;

use App\Models\Lab;
use App\Models\LaporanLab;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckLabStatus
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        date_default_timezone_set('Asia/Jakarta');
        $currentTime = now()->toTimeString();

        $laporanSelesai = LaporanLab::where('jam_selesai', '<', $currentTime)
            ->where('exp', '=', false)
            ->orderBy('jam_selesai', 'asc')
            ->get();

        foreach ($laporanSelesai as $laporan) {
            $laporan->exp = true; 
            $laporan->save();
            
            $lab = Lab::find($laporan->lab_id);
            if ($lab) {
                $lab->used = false;  
                $lab->user_id = null;  
                $lab->time_usage = null;
                $lab->network = 0;
                $lab->save();
            }
        }
        
        // Ambil semua laporan lab yang sedang berlangsung
        // $laporanBerjalan = LaporanLab::where('jam_mulai', '<=', $currentTime)
        //     ->where('jam_selesai', '>=', $currentTime)
        //     ->get();

        // foreach ($laporanBerjalan as $laporan) {
        //     // Set lab terkait menjadi "sedang digunakan"
        //     $lab = Lab::find($laporan->lab_id);
        //     if ($lab) {
        //         $lab->used = true;  // Atur lab menjadi "sedang digunakan"
        //         $lab->save();
        //     }
        // }
        return $next($request);
    }
}
