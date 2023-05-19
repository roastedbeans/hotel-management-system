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
    <div id="app">
        <header class="bg-primary py-4 px-10 drop-shadow-lg fixed w-screen z-10">
            <div class="container mx-auto flex items-center justify-start px-4">
                <x-dashboard-logo />
                <nav class=" flex-1">
                    <ul class="flex justify-start gap-10 px-10">
                        @php
                        $wordExists = str_contains(request()->url(), 'admin');
                        @endphp

                        @if ($wordExists)
                        <li><a href="/admin/home" class="text-quaternary hover:opacity-80 hover:animate-pulse transition">Home</a></li>
                        <li><a href="/admin/booking" class="text-quaternary hover:opacity-80 hover:animate-pulse transition">Booking</a></li>
                        <li><a href="/admin/employee" class="text-quaternary hover:opacity-80 hover:animate-pulse transition">Employee</a></li>
                        @else
                        <li><a href="/guest/home" class="text-quaternary hover:opacity-80 hover:animate-pulse transition">Home</a></li>
                        <li><a href="/guest/booking" class="text-quaternary hover:opacity-80 hover:animate-pulse transition">Booking</a></li>
                        @endif
                    </ul>
                </nav>

                <!-- Right Side Of Navbar -->
                <nav class="flex-1 justify-end">
                    <!-- Authentication Links -->
                    <ul class="flex flex-row ms-auto text-quaternary justify-end w-full">
                        @guest
                        @if (Route::has('login'))
                        <li class="">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        @endif

                        @if (Route::has('register'))
                        <li class="">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                        @endif
                        @else
                        <li class="flex gap-10">
                            <a id="navbarDropdown" href="#">
                                {{ Auth::user()->name }}
                            </a>

                            <div>
                                <a href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>
                            </div>
                        </li>
                        @endguest
                    </ul>
                </nav>
            </div>
        </header>
    </div>
</body>

</html>