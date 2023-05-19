<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\GuestController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\EmployeeController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/home', function () {
    return view('welcome');
});
Route::get('/', function () {
    return view('welcome');
});

Route::get('/login', [AuthController::class, 'login'])->name('login');
Route::get('/register', [AuthController::class, 'register'])->name('register');
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

// admin-side
Route::prefix('admin')->middleware(['auth', 'isAdmin'])->group(function () {

    Route::get('/home', [AdminController::class, 'adminHome'])->name('admin.home');
    Route::get('/booking', [BookingController::class, 'adminBooking'])->name('admin.booking');
    Route::get('/booking/{id}/edit', [BookingController::class, 'adminEdit']);
    Route::put('/booking/{id}', [BookingController::class, 'adminUpdate'])->name('admin.edit');
    Route::delete('/booking/{id}', [BookingController::class, 'adminDestroy'])->name('admin.booking.destroy');

    Route::get('/employee', [EmployeeController::class, 'employee'])->name('admin.employee');
    Route::post('/employee', [EmployeeController::class, 'storeEmployee']);
    Route::get('/employee/{id}/edit', [EmployeeController::class, 'editEmployee']);
    Route::put('/employee/{id}', [EmployeeController::class, 'updateEmployee'])->name('admin.employee.update');
    Route::delete('/employee/delete/{id}', [EmployeeController::class, 'removeEmployee'])->name('admin.employee.delete');
});
Route::middleware(['auth', 'isAdmin'])->group(function () {
    Route::get('/', [AdminController::class, 'adminReturn']);
    Route::get('/admin', [AdminController::class, 'adminReturn']);
    Route::get('/return', [AdminController::class, 'adminReturn']);
});

// guest-side
Route::prefix('guest')->middleware(['auth', 'guest'])->group(function () {

    Route::get('/home', [GuestController::class, 'guestHome'])->name('guest.home');

    Route::get('/booking', [BookingController::class, 'index'])->name('guest.booking');
    Route::post('/booking', [BookingController::class, 'store']);
    Route::get('/booking/{id}/edit', [BookingController::class, 'edit']);
    Route::put('/booking/{id}', [BookingController::class, 'update'])->name('guest.edit');
    Route::delete('/booking/{id}', [BookingController::class, 'destroy'])->name('booking.destroy');
});
Route::middleware(['auth'])->group(function () {
    Route::get('/', [guestController::class, 'guestReturn']);
    Route::get('/guest', [guestController::class, 'guestReturn']);
    Route::get('/return', [guestController::class, 'guestReturn']);
});



Auth::routes();
