<?php

namespace App\Http\Controllers;

class GuestController extends Controller
{
    public function guestReturn()
    {
        return redirect('guest/home');
    }
    public function guestHome()
    {
        return view('guest-home');
    }
}
