<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use App\Models\User;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    // Display a listing of bookings
    public function index()
    {
        $user = auth()->user();
        $bookings = Booking::where('user_id', $user->id)->get();
        return view('booking.booking', compact('bookings', 'user'));
    }

    public function adminBooking()
    {
        $user = auth()->user();
        $bookings = Booking::all();
        return view('booking.show-booking', compact('bookings', 'user'));
    }

    // Show the form for creating a new booking
    public function create()
    {
        return view('booking.booking');
    }

    // Store a newly created booking in the database
    public function store(Request $request)
    {
        $user = auth()->user();
        $booking = new Booking();
        $booking->user_id = $user->id;
        $booking->guest_name = $request->input('guest_name');
        $booking->guest_number = $request->input('guest_number');
        $booking->check_in_date = $request->input('check_in_date');
        $booking->check_out_date = $request->input('check_out_date');
        $booking->room_type = $request->input('room_type');
        $booking->room_price = $request->input('room_price');
        $booking->payment_method = $request->input('payment_method');
        $booking->card_number = $request->input('card_number');
        $booking->save();

        return redirect('/guest/booking')->with('success', 'Booking created successfully!');
    }

    // Show the form for editing a booking
    public function edit($id)
    {
        $user = auth()->user();
        $booking = Booking::findOrFail($id);
        $bookings = Booking::where('user_id', $user->id)->get();
        return view('booking.booking', compact('booking', 'bookings', 'user'));
    }
    public function adminEdit($id)
    {
        $user = auth()->user();
        $booking = Booking::findOrFail($id);
        $bookings = Booking::all();
        return view('booking.show-booking', compact('booking', 'bookings', 'user'));
    }

    // Update the specified booking in the database
    public function update(Request $request, $id)
    {
        $booking = Booking::findOrFail($id);
        $booking->guest_name = $request->input('guest_name');
        $booking->guest_number = $request->input('guest_number');
        $booking->check_in_date = $request->input('check_in_date');
        $booking->check_out_date = $request->input('check_out_date');
        $booking->room_type = $request->input('room_type');
        $booking->room_price = $request->input('room_price');
        $booking->payment_method = $request->input('payment_method');
        $booking->card_number = $request->input('card_number');
        $booking->save();

        return redirect('/guest/booking')->with('success', 'Booking updated successfully!');
    }

    public function adminUpdate(Request $request, $id)
    {
        $booking = Booking::findOrFail($id);
        $booking->guest_name = $request->input('guest_name');
        $booking->guest_number = $request->input('guest_number');
        $booking->check_in_date = $request->input('check_in_date');
        $booking->check_out_date = $request->input('check_out_date');
        $booking->room_type = $request->input('room_type');
        $booking->room_price = $request->input('room_price');
        $booking->payment_method = $request->input('payment_method');
        $booking->card_number = $request->input('card_number');
        $booking->save();

        return redirect('/admin/booking')->with('success', 'Booking updated successfully!');
    }

    // Delete the specified booking from the database
    public function destroy($id)
    {
        $booking = Booking::findOrFail($id);
        $booking->delete();

        return redirect('/guest/booking')->with('success', 'Booking deleted successfully!');
    }

    public function adminDestroy($id)
    {
        $booking = Booking::findOrFail($id);
        $booking->delete();

        return redirect('/admin/booking')->with('success', 'Booking deleted successfully!');
    }
}
