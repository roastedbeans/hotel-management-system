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
    <h1 class="text-2xl font-bold mb-2">Update Employee Account</h1>
    <!-- Booking Form -->
    <form action="{{ route('admin.employee.update', ['id' => $employee->id])  }}" method="POST">
        @csrf
        @Method('PUT')
        <div class="flex flex-col gap-4">
            <div class="flex flex-row gap-6 items-end justify-center w-full">
                <!-- Booking details -->
                <div class="flex-1">
                    <label for="employee_name" class="block font-medium">Name</label>
                    <input type="text" value="{{ $employee->employee_name }}" name="employee_name" id="employee_name" class="w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>
                <div class="flex-1">
                    <label for="employee_bday" class="block font-medium">Birthday</label>
                    <input type="date" value="{{ $employee->employee_bday }}" name="employee_bday" id="employee_bday" class=" w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>
                <div class="flex-1">
                    <label for="employee_email" class="block font-medium">Email</label>
                    <input type="email" value="{{ $employee->employee_email }}" name="employee_email" id="employee_email" class=" w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>
                <div class="flex-1">
                    <label for="employee_number" class="block font-medium">Number</label>
                    <input type="number" value="{{ $employee->employee_number }}" name="employee_number" id="employee_number" class=" w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>
            </div>
            <div class="flex flex-row gap-6 items-end justify-center w-full">
                <!-- Booking details -->
                <div class="flex-1">
                    <label for="employee_role" class="block font-medium">Position</label>
                    <select name="employee_role" id="employee_role" class="w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md">
                        <option value="Admin" {{ $employee->employee_role === 'Admin' ? 'selected' : '' }}>Admin</option>
                        <option value="Hotel_Manager" {{$employee->employee_role === 'Hotel_Manager' ? 'selected' : '' }}>Hotel Manager</option>
                        <option value="Assistant_General_Manager" {{ $employee->employee_role === 'Assistant_General_Manager' ? 'selected' : '' }}>Assistant General Manager</option>
                        <option value="Guest_Relations_Manager" {{ $employee->employee_role === 'Guest_Relations_Manager' ? 'selected' : '' }}>Guest Relations Manager</option>
                        <option value="Concierge" {{ $employee->employee_role === 'Concierge' ? 'selected' : '' }}>Concierge</option>
                        <option value="Receptionist" {{ $employee->employee_role === 'Receptionist' ? 'selected' : '' }}>Receptionist</option>
                        <option value="Front_Office" {{ $employee->employee_role === 'Front_Office' ? 'selected' : '' }}>Front Office</option>
                        <option value="Housekeeper" {{ $employee->employee_role === 'Housekeeper' ? 'selected' : '' }}>Housekeeper</option>
                        <option value="Server" {{ $employee->employee_role === 'Server' ? 'selected' : ''}}>Server</option>
                        <option value="Restaurant_Manager" {{ $employee->employee_role === 'Restaurant_Manager' ? 'selected' : '' }}>Restaurant Manager</option>
                        <option value="Chef" {{ $employee->employee_role === 'Chef' ? 'selected' : ''}}>Chef</option>
                        <option value="Bartender" {{ $employee->employee_role === 'Bartender' ? 'selected' : '' }}>Bartender</option>
                    </select>
                </div>
                <div>
                    <button type="submit" class="bg-primary text-quaternary drop-shadow-md hover:opacity-80 hover:scale-110 transition-all text-2xl font-sansBold px-4 py-1 rounded-md">UPDATE</button>
                </div>
            </div>
        </div>
        <!-- Submit Button -->
    </form>
</div>
