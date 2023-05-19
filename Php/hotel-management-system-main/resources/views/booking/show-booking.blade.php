<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body>

    <div>
        @extends('layouts.app')
    </div>


    <div class="absolute w-full p-20 justify-center items-center scroll-smooth z-10">
        @php
        $wordExists = str_contains(request()->url(), 'edit');
        @endphp

        @if ($wordExists)
        @include('booking.edit')
        @else

        @endif
        <div>
            <div class="flex mt-10 flex-col rounded-md">
                <table class="min-w-full bg-quaternary shadow-md">
                    <thead>
                        <tr class="text-[14px] shadow-md">
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Guest Name</th>
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Email</th>
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Guest Number</th>
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Check-in Date</th>
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Check-out Date</th>
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Room Type</th>
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Room Price</th>
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Payment Method</th>
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Card Number</th>
                            <th class="px-4 py-3 bg-primary bg-opacity-30 text-gray-700">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($bookings as $booking)
                        <tr class="text-[14px]">
                            <td class="px-4 py-4 text-center">{{ $booking->guest_name }}</td>
                            <td class="px-4 py-4">{{ $user->email }}</td>
                            <td class="px-4 py-4 text-right">{{ $booking->guest_number }}</td>
                            <td class="px-4 py-4 text-center">{{ $booking->check_in_date }}</td>
                            <td class="px-4 py-4 text-center">{{ $booking->check_out_date }}</td>
                            <td class="px-4 py-4 text-center">{{ $booking->room_type }}</td>
                            <td class="px-4 py-4 text-center">{{ $booking->room_price }}</td>
                            <td class="px-4 py-4 text-center">{{ $booking->payment_method }}</td>
                            <td class="px-4 py-4 text-right">{{ $booking->card_number }}</td>
                            <td class="px-4 py-4 justify-center items-center flex gap-2">
                                <a href="/admin/booking/{{ $booking->id }}/edit" class="text-primary hover:opacity-80 font-sansBold transition-opacity">Edit</a>
                                <form action="/admin/booking/{{ $booking->id }}" method="POST" class="inline">
                                    @method('DELETE')
                                    @csrf
                                    <button type="submit" class="text-red-500 hover:opacity-80 font-sansBold transition-opacity">Cancel</button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    @include('welcome')
</body>
</div>