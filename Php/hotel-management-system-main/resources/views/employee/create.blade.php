<!-- resources/views/bookings/create.blade.php -->
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

<div class="container mx-auto p-6 relative z-10 mt-4 rounded-md drop-shadow-lg items-center justify-center bg-quaternary">
    <h1 class="text-2xl font-bold mb-2">Register Employee</h1>
    <!-- Booking Form -->
    <form action="{{ route('admin.employee') }}" method="POST">
        @csrf
        <div class="flex flex-col gap-4">
            <div class="flex flex-row gap-6 items-end justify-center w-full">
                <!-- Booking details -->
                <div class="flex-1">
                    <label for="employee_name" class="block font-medium">Name</label>
                    <input type="text" name="employee_name" id="employee_name" class="w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>
                <div class="flex-1">
                    <label for="employee_bday" class="block font-medium">Birthday</label>
                    <input type="date" name="employee_bday" id="employee_bday" class=" w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>
                <div class="flex-1">
                    <label for="employee_email" class="block font-medium">Email</label>
                    <input type="email" name="employee_email" id="employee_email" class=" w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>
                <div class="flex-1">
                    <label for="employee_number" class="block font-medium">Number</label>
                    <input type="number" name="employee_number" id="employee_number" class=" w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>
            </div>
            <div class="flex flex-row gap-6 items-end justify-center w-full">
                <!-- Booking details -->
                <div class="flex-1">
                    <label for="employee_role" class="block font-medium">Position</label>
                    <select name="employee_role" id="employee_role" class="w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md">
                        <option value="Admin">Admin</option>
                        <option value="Hotel_Manager">Hotel Manager</option>
                        <option value="Assistant_General_Manager">Assistant General Manager</option>
                        <option value="Guest_Relations_Manager">Guest Relations Manager</option>
                        <option value="Concierge">Concierge</option>
                        <option value="Receptionist">Receptionist</option>
                        <option value="Front_Office">Front Office</option>
                        <option value="Housekeeper">Housekeeper</option>
                        <option value="Server">Server</option>
                        <option value="Restaurant_Manager">Restaurant Manager</option>
                        <option value="Chef">Chef</option>
                        <option value="Bartender">Bartender</option>
                    </select>
                </div>
                <div>
                    <button type="submit" class="bg-primary text-quaternary drop-shadow-md hover:opacity-80 hover:scale-110 transition-all text-2xl font-sansBold px-4 py-1 rounded-md">REGISTER</button>
                </div>
            </div>
        </div>
        <!-- Submit Button -->

    </form>
</div>