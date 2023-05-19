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


    <div class="absolute w-full p-20 justify-center items-center scroll-smooth">
        @php
        $wordExists = str_contains(request()->url(), 'edit');
        @endphp

        @if ($wordExists)
        @include('booking.edit')
        @else
        @include('booking.create')
        @endif
        <div>
            <div class="flex flex-row gap-4 overflow-x-scroll snap-center scroll-smooth">
                @foreach($bookings as $booking)
                <div class="block w-[28rem] rounded-md shadow-lg mb-4 z-10 mt-10 bg-quaternary">
                    <div class="px-6 py-6 flex flex-col gap-2 w-[28rem]">
                        <div>
                            <p class="font-bold text-xl mb-2 border-b-2 border-primary overflow-auto">{{ $booking->guest_name }}</p>
                        </div>
                        <div class="flex flex-row gap-2">
                            <p class="p-2 bg-white drop-shadow-md w-full rounded  overflow-auto">{{ $user->email}}</p>
                            <p class="p-2 bg-white drop-shadow-md w-1/4 rounded overflow-auto">{{ $booking->guest_number}}</p>
                        </div>
                        <div class="flex flex-row gap-2">
                            <div class="flex-1 flex-row flex gap-4 justify-end items-center">
                                <p class="font-bold">Check-in</p>
                                <p class="p-2 bg-white drop-shadow-md w-1/2 rounded">{{ $booking->check_in_date }}</p>
                            </div>
                            <div class="flex-1 flex-row flex gap-4 justify-end items-center">
                                <p class="font-bold">Check-out</p>
                                <p class="p-2 bg-white drop-shadow-md w-1/2 rounded">{{ $booking->check_out_date }}</p>
                            </div>
                        </div>
                        <div class="flex-row flex gap-2">
                            <div class="flex-1 flex-row flex gap-4 justify-end items-center">
                                <p class="font-bold">Room</p>
                                <p class="p-2 bg-white drop-shadow-md w-1/2 rounded">{{ $booking->room_type }}</p>
                            </div>
                            <div class="flex-1 flex-row flex gap-4 justify-end items-center">
                                <p class="font-bold">Price</p>
                                <p class="p-2 bg-white drop-shadow-md w-1/2 rounded">{{ $booking->room_price }}</p>
                            </div>
                        </div>
                        <div class="flex-row flex gap-2">
                            <div class="flex-1 flex-row flex gap-4 justify-end items-center">
                                <p class="font-bold">Payment</p>
                                <p class="p-2 bg-white drop-shadow-md w-1/2 rounded">{{ $booking->payment_method }}</p>
                            </div>
                            <div class="flex-1 flex-row flex gap-4 justify-end items-center">

                                <p class="p-2 bg-white drop-shadow-md w-full rounded text-right">{{ $booking->card_number }}</p>
                            </div>
                        </div>
                        </p>
                        <div class="flex flex-row gap-4 justify-evenly items-center px-10">
                            <a href="/guest/booking/{{ $booking->id }}/edit" class="bg-primary hover:opacity-80 text-white font-bold py-2 px-4 rounded transition w-full text-center">Edit</a>
                            <form action="/guest/booking/{{ $booking->id }}" method="POST" class="w-full">
                                @method('DELETE')
                                @csrf
                                <button type="submit" class="bg-secondary hover:opacity-80 text-white font-bold py-2 px-4 rounded transition w-full text-center">Cancel</button>
                            </form>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>

    @include('welcome')
</body>
</div>