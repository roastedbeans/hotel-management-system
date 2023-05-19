<?php

namespace App\Http\Middleware;

use App\Providers\RouteServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, \Closure $next): Response
    {
        if (Auth::check()) {
            if (Auth::user()->role == '1') {
                redirect('admin/home');
                return $next($request);
            } else if (Auth::user()->role == '0') {
                return redirect('guest/home');
            }
        } else {
            return redirect('login');
        }
        return $next($request);
    }
}
