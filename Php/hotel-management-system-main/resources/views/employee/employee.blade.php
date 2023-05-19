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
        @include('employee.edit')
        @else
        @include('employee.create')
        @endif
        <div>
            <div class="flex flex-row gap-4 overflow-x-scroll snap-center scroll-smooth">
                @foreach($employees as $employee)
                <div class="block w-[28rem] rounded-md shadow-lg mb-4 z-10 mt-10 bg-quaternary">
                    <div class="px-6 py-6 flex flex-col gap-2 w-[28rem]">
                        <div class="flex flex-row gap-2 border-b-2 w-full border-primary">
                            <p class="font-bold text-xl overflow-auto text-end items-center flex flex-1">{{ $employee->employee_name }}</p>
                            <p class="font-sen text-base overflow-auto text-end items-center flex">{{ $employee->employee_bday }}</p>
                        </div>
                        <p class="p-2 bg-white drop-shadow-md w-full rounded overflow-auto">{{ $employee->employee_email }}</p>
                        <p class="p-2 bg-white drop-shadow-md w-full rounded overflow-auto">{{ $employee->employee_number }}</p>

                        <div class="flex flex-row">
                            <p class="p-2 drop-shadow-md rounded flex-shrink">Position</p>
                            <p class="p-2 bg-white drop-shadow-md w-full rounded flex-1">{{ $employee->employee_role }}</p>
                        </div>
                        <div class="flex flex-row gap-4 justify-evenly items-center px-10">
                            <a href="/admin/employee/{{ $employee->id }}/edit" class="bg-primary hover:opacity-80 text-white font-bold py-2 px-4 rounded transition w-full text-center">Edit</a>
                            <form action="/admin/employee/delete/{{ $employee->id }}" method="POST" class="w-full">
                                @method('DELETE')
                                @csrf
                                <button type="submit" class="bg-secondary hover:opacity-80 text-white font-bold py-2 px-4 rounded transition w-full text-center">Remove</button>
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
