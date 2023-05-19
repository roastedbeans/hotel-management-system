<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;


class RedirectIfAuthenticated
{
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {
            // User is authenticated, redirect based on the guard
            switch ($guard) {
                case 'admin':
                    return redirect('/admin/home');
                default:
                    redirect('/guest/home');
            }
        }
        return $next($request);
    }
}
