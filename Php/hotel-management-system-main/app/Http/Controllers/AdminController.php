<?php

namespace App\Http\Controllers;

class AdminController extends Controller
{
    public function adminReturn()
    {
        return redirect('/admin/home');
    }
    public function adminHome()
    {
        return view('admin-home');
    }
}
