<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>The 6</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- Scripts -->
    @vite('resources/css/app.css')

    <style>
        body {
            margin: 0;
            line-height: inherit;
            overflow-x: hidden;
        }

        .material-symbols-outlined {
            font-variation-settings:
                'FILL' 0,
                'wght' 400,
                'GRAD' 0,
                'opsz' 20
        }

        @keyframes bounce-custom {

            0%,
            100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-10px);
            }
        }

        .animate-bounce-custom {
            animation: bounce-custom 1s ease-in-out infinite;
        }
    </style>
</head>

<body class="antialiased scroll-smooth">
    <div class="absolute max-w-screen-2xl">
        <div>
            @php
            $wordExists = str_contains(request()->url(), 'home');
            @endphp
            @if($wordExists)
            <div class="m-0 p-0 w-full h-screen object-scale-down flex justify-center items-center bg-[url('/public/images/home-bg.png')] bg-cover">
                <div class="w-full flex justify-center items-center flex-col text-quaternary ">
                    <div class="h-28"></div>

                    <div class="hover:scale-105 transition text-center p-[60px] pb-0 w-fit h-fit bg-[rgba(0,0,0,.2)] rounded-2xl backdrop-blur-[1px] shadow-md">
                        <h1 class="font-sansBold text-[1.1rem] tracking-widest select-none">WELCOME TO</h1>
                        <h1 class="font-serif text-[8rem] select-none">The 6 Hotel & Suites</h1>
                    </div>
                    @else
                    <div class="m-0 p-0 w-full h-screen object-scale-down flex justify-center items-center bg-[url('/public/images/booking-bg.svg')] bg-cover">
                        @endif
                        @if (Route::has('login'))
                        <div class="flex justify-center text-center items-center flex-col text-primary gap-8 mt-10 w-full">
                            @auth

                            @else
                            <a href=" {{ route('login') }}" class="w-40 h-10 bg-quaternary hover:opacity-80 rounded-sm transition-all px-6 py-2 mx-4">Log in</a>

                            @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="w-40 h-10 bg-quaternary hover:opacity-80 rounded-sm transition-all px-4 py-2 mx-4">Register</a>
                            @endif
                            @endauth


                        </div>
                        <div class="absolute flex flex-col gap-0 m-0 p-0 top-[40rem] animate-bounce-custom">
                            <a class="font-sans text-[74px] scale-x-150 scale-y-50 text-quaternary m-0 p-0 translate-y-[0rem] opacity-40">v</a>
                            <a class="font-sans text-[74px] scale-x-150 scale-y-50 text-quaternary m-0 p-0 -translate-y-[6rem] opacity-70">v</a>
                            <a class="font-sans text-[74px] scale-x-150 scale-y-50 text-quaternary m-0 p-0 -translate-y-[12rem]">v</a>
                        </div>
                        @endif
                    </div>
                </div>
                <div class="w-full h-screen object-scale-down flex justify-center items-center bg-quaternary">
                    <div class="h-28"></div>
                    <div class="w-full flex items-center flex-row text-primary justify-evenly">

                        <div class="hover:scale-105 transition m-36 flex-1">
                            <h1 class="font-serif text-[36px] tracking-widest select-none font-bold">Experience a luxurious stay with our accommodations in the Philippines</h1>
                            <p class="mt-10 font-san text-[14px] tracking-widest select-none font-light text-justify">Discover the beauty of the Philippines while enjoying a comfortable stay in our luxurious accommodations. Our hotels offer top-notch facilities and exceptional services that guarantee a memorable experience for every guest. From cozy rooms to spacious suites, we provide a range of options that cater to every traveler's needs.</p>
                        </div>
                        <div class="flex-1">
                            <img src=" {{URL('images/man-sitting.png')}}" class="z-10 h-[440px] w-[340px] object-cover hover:rotate-1 transition">
                        </div>
                    </div>
                </div>
                <div class="w-full h-screen object-scale-down justify-center items-center bg-quaternary">
                    <div class="w-full h-full flex items-center flex-row text-primary gap-10">
                        <div class="hover:scale-105 transition w-full flex flex-col items-end text-right">
                            <h1 class="font-serif text-[115px] tracking-widest select-none w-[full]">The Family Suite</h1>
                        </div>
                        <div class="w-full flex flex-col">
                            <img src=" {{URL('images/family-suite.png')}}" class="z-10 h-[480px] w-[590px] object-cover hover:translate-x-2 transition">
                            <p class="mt-0 font-sansLight text-[14px] p-10 tracking-widest select-none text-justify w-[590px] text-quaternary bg-primary">The Family Suite is the perfect choice for families or groups looking for a spacious and comfortable accommodation. This room type features a modern and stylish design, with two separate bedrooms and a living room area. The first bedroom has a king-sized bed and the second bedroom has two twin beds, making it suitable for up to four people.</p>
                        </div>
                    </div>
                </div>
                <div class="w-full h-screen bg-quaternary">
                    <div class="w-full h-full flex items-center justify-center flex-row text-primary gap-10">
                        <div class="flex flex-col flex-1 justify-end items-end gap-4">
                            <img src=" {{URL('images/living-room.png')}}" class="z-10 h-[480px] w-[820px] object-cover hover:drop-shadow-lg transition">
                            <p class="mt-0 font-sans text-[14px] p-4 tracking-widest select-none text-justify w-[820px] text-primary border-secondary border-4 border-solid">The living room area is furnished with comfortable seating, a flat-screen TV, and a coffee table. The suite also has a private balcony with a stunning view of the surrounding area, perfect for enjoying a cup of coffee or tea in the morning.</p>
                        </div>
                        <div class="flex flex-col flex-flex-lg-shrink justify-center items-center gap-4 mr-20">
                            <img src=" {{URL('images/bathroom.png')}}" class="z-10 h-[480px] w-[520px] object-cover hover:drop-shadow-lg transition">
                            <p class="mt-0 font-sans text-[14px] p-4 tracking-widest select-none text-justify w-[520px] text-primary border-secondary border-4 border-solid">The bathroom in the Family Suite is equipped with a shower, bathtub, and basic toiletries. Other amenities include air conditioning, a minibar, and complimentary Wi-Fi.</p>
                        </div>
                    </div>
                </div>
                <div class="w-full h-screen object-scale-down justify-center items-center bg-quaternary">
                    <div class="w-full h-full flex items-center flex-row text-primary gap-10">
                        <div class="transition w-full flex flex-col items-center text-center gap-2">
                            <h1 class="font-serif text-[64px] tracking-widest select-none">Promos and Offers</h1>
                            <div class="flex flex-row gap-4">
                                <div class="flex flex-col gap-4">
                                    <img src=" {{URL('images/early-bird.jpg')}}" class="z-10 h-[280px] object-cover hover:translate-y-2 transition">
                                    <div class="border-2 border-solid border-primary text-start h-[260px] w-[460px]">
                                        <div class="h-28">
                                            <h1 class="pt-6 px-10 font-sans text-[28px] tracking-widest select-none"><span class="font-serif text-[42px]">|</span>Early Bird Discount</h1>
                                        </div>
                                        <p class="p-8 font-sans text-[12px] tracking-widest select-none">Book your stay in advance and enjoy a discounted rate. This promo is perfect for those who like to plan ahead and want to save money on their accommodation.</p>
                                    </div>
                                </div>
                                <div class="flex flex-col gap-4">
                                    <img src=" {{URL('images/membership.jpg')}}" class="z-10 h-[280px] object-cover hover:translate-y-2 transition">
                                    <div class="border-2 border-solid border-primary text-start h-[260px] w-[460px]">
                                        <div class="h-28">
                                            <h1 class="pt-6 px-10 font-sans text-[28px] tracking-widest select-none"><span class="font-serif text-[42px]">|</span>The <span class="font-serif text-[42px]">6</span> Members Club</h1>
                                        </div>
                                        <p class="p-8 font-sans text-[12px] tracking-widest select-none">Join our membership club and receive exclusive discounts on your stay. This promo is ideal for frequent travelers who want to enjoy special perks and discounts.</p>
                                    </div>
                                </div>
                                <div class="flex flex-col gap-4">
                                    <img src=" {{URL('images/3nights.jpg')}}" class="z-10 h-[280px] object-cover hover:translate-y-2 transition">
                                    <div class="border-2 border-solid border-primary text-start h-[260px] w-[460px]">
                                        <div class="h-28">
                                            <h1 class="pt-6 px-10 font-sans text-[28px] tracking-widest select-none"><span class="font-serif text-[42px]">|</span>Book <span class="font-serif text-[42px]">3</span> Nights,</h1>
                                            <h1 class="pt-0 -translate-y-[1.65rem] px-10 font-sans text-[28px] tracking-widest select-none"><span class="font-serif text-[42px]">|</span>Get <span class="font-serif text-[42px]">1</span> Night Free</h1>
                                        </div>
                                        <p class="p-8 font-sans text-[12px] tracking-widest select-none">Book three nights with us and get one night for free. This promo is perfect for those who want to extend their stay and make the most of their vacation. Enjoy an extra night on us when you book for three nights.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="w-full h-screen object-scale-down justify-center items-center bg-quaternary">
                    <div class="w-full h-full flex items-center flex-row text-primary gap-10">
                        <div class="transition w-full flex flex-col items-center text-center gap-2">
                            <h1 class="font-serif text-[64px] tracking-widest select-none">Accommodations</h1>
                            <div class="flex flex-row gap-4">
                                <div class="flex flex-col gap-4">
                                    <img src=" {{URL('images/deluxe.png')}}" class="z-10 h-[280px] object-cover hover:translate-y-2 transition">
                                    <div class="border-2 border-solid border-primary text-start h-[240px] w-[460px]">
                                        <p class="px-10 pt-10 pb-16 font-sansLight text-[14px] tracking-widest select-none">2 adults | 1 child below 7</p>
                                        <div>
                                            <h1 class="px-10 font-sans text-[28px] tracking-widest select-none">Deluxe Room</h1>
                                        </div>
                                        <p class="px-10 pt-2 font-sans text-[14px] tracking-widest select-none">from ₱3,500 a night</p>
                                    </div>
                                </div>
                                <div class="flex flex-col gap-4">
                                    <img src=" {{URL('images/family-suite-2.png')}}" class="z-10 h-[280px] object-cover hover:translate-y-2 transition">
                                    <div class="border-2 border-solid border-primary text-start h-[240px] w-[460px]">
                                        <p class="px-10 pt-10 pb-16 font-sansLight text-[14px] tracking-widest select-none">4 adults | 2 child below 7</p>
                                        <div>
                                            <h1 class="px-10 font-sans text-[28px] tracking-widest select-none">Family Suite</h1>
                                        </div>
                                        <p class="px-10 pt-2 font-sans text-[14px] tracking-widest select-none">from ₱6,500 a night</p>
                                    </div>
                                </div>
                                <div class="flex flex-col gap-4">
                                    <img src=" {{URL('images/presidential.png')}}" class="z-10 h-[280px] object-cover hover:translate-y-2 transition">
                                    <div class="border-2 border-solid border-primary text-start h-[240px] w-[460px]">
                                        <p class="px-10 pt-10 pb-16 font-sansLight text-[14px] tracking-widest select-none">6 adults | 2 child below 7</p>
                                        <div>
                                            <h1 class="px-10 font-sans text-[28px] tracking-widest select-none">Luxury Suite</h1>
                                        </div>
                                        <p class="px-10 pt-2 font-sans text-[14px] tracking-widest select-none">from ₱9,000 a night</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="m-0 p-0 w-full h-screen object-scale-down flex justify-center items-center bg-[url('/public/images/in-the-press-bg.png')] bg-cover">
                    <div class="w-full flex justify-center items-center flex-col  text-quaternary ">
                        <div class="w-full h-full flex items-center flex-row text-quaternary gap-10">
                            <div class="transition w-full flex flex-col items-center text-center gap-20">
                                <h1 class="font-serif text-[64px] tracking-widest select-none">In the Press</h1>
                                <div class="flex flex-row gap-4">
                                    <div class="flex flex-col gap-4">
                                        <div class="text-start h-[240px] w-[460px]">
                                            <img src="{{URL('images/quotation.png')}}" class="w-6 mx-10">
                                            <p class="px-10 pt-10 font-sansLight text-[14px] tracking-widest select-none">I had an amazing experience at The 6 Hotel & Suites. The staff was friendly and accommodating, and the room was clean and comfortable. I would definitely recommend this hotel to anyone visiting the area.</p>
                                            <p class="px-10 pt-4 font-sansBold text-[14px] tracking-widest select-none">-</p>
                                            <p class="px-10 font-sansBold text-[14px] tracking-widest select-none">Jane Smith, Travel Blogger</p>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-4">
                                        <div class="text-start h-[240px] w-[460px]">
                                            <img src="{{URL('images/quotation.png')}}" class="w-6 mx-10">
                                            <p class="px-10 pt-10 font-sansLight text-[14px] tracking-widest select-none">Staying at The 6 Hotel & Suites was the highlight of my trip. The facilities were top-notch, and the location was perfect for exploring the city. I will definitely be staying here again on my next visit.</p>
                                            <p class="px-10 pt-4 font-sans text-[14px] tracking-widest select-none">-</p>
                                            <p class="px-10 font-sansBold text-[14px] tracking-widest select-none">John Doe, Travel Writer</p>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-4">
                                        <div class="text-start h-[240px] w-[460px]">
                                            <img src="{{URL('images/quotation.png')}}" class="w-6 mx-10">
                                            <p class="px-10 pt-10 font-sansLight text-[14px] tracking-widest select-none">I have stayed at many hotels in my travels, but The 6 Hotel & Suites stands out as one of the best. The attention to detail and level of service provided by the staff was exceptional. I would highly recommend this hotel to anyone looking for a luxurious and comfortable stay.</p>
                                            <p class="px-10 pt-4 font-sansBold text-[14px] tracking-widest select-none">-</p>
                                            <p class="px-10 font-sansBold text-[14px] tracking-widest select-none">Sarah Johnson, Travel Enthusiast</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="m-0 p-0 w-full h-screen object-scale-down flex justify-center items-center bg-primary">
                    <div class="w-full flex justify-center items-center flex-col  text-tertiary">
                        <div class="w-full h-full flex items-center flex-row text-quaternary gap-10">
                            <div class="transition w-full flex flex-col items-center text-center gap-40">
                                <div class="w-full text-left pl-20">
                                    <h1 class="font-serif text-[64px] tracking-widest select-none">The 6 Hotel & Suites</h1>
                                </div>
                                <div class="flex flex-row gap-16">
                                    <div class="flex flex-col gap-4 border-2 border-solid border-tertiary">
                                        <div class="text-start h-[240px] w-[400px] p-8 flex flex-col gap-2">
                                            <p class="text-[26px] font-sansBold pb-10">Reservation Office</p>
                                            <div class="flex flex-row align-middle justify-start text-base">

                                                <span class="material-symbols-outlined">
                                                    location_on
                                                </span>
                                                <p class="font-sans text-[16px] tracking-widest select-none mx-1">123 Main St., Makati City</p>
                                            </div>
                                            <div class="flex flex-row align-middle justify-start text-base">
                                                <span class="material-symbols-outlined">
                                                    phone_iphone
                                                </span>
                                                <p class="font-sans text-[16px] tracking-widest select-none mx-1">+63 123-4567</p>
                                            </div>
                                            <div class="flex flex-row align-middle justify-start text-base">
                                                <span class="material-symbols-outlined">
                                                    mail
                                                </span>
                                                <p class="font-sans text-[16px] tracking-widest select-none mx-1">reservations@the6hs.com</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-4 border-2 border-solid border-tertiary">
                                        <div class="text-start h-[240px] w-[400px] p-8 flex flex-col gap-2">
                                            <p class="text-[26px] font-sansBold pb-10">Office Hours</p>
                                            <div class="flex flex-row align-middle justify-start text-base">
                                                <p class="font-sans text-[16px] tracking-widest select-none mx-1">Monday to Saturday</p>
                                            </div>
                                            <div class="flex flex-row align-middle justify-start text-base">
                                                <span class="material-symbols-outlined">
                                                    schedule
                                                </span>
                                                <p class="font-sans text-[16px] tracking-widest select-none mx-1">9:00 am to 6:00 pm</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="flex flex-col gap-4 border-2 border-solid border-tertiary">
                                        <div class="text-start h-[240px] w-[400px] p-8 flex flex-col gap-2">
                                            <p class="text-[26px] font-sansBold pb-10">Get Social</p>
                                            <div class="flex flex-row align-middle justify-start text-base gap-10">
                                                <a href="https://www.facebook.com/" class="border-2 border-solid border-quaternary w-12 h-12 rounded-full overflow-clip">
                                                    <div class="pt-[6px] p-2"><img src="{{URL('/images/facebook-f.svg')}}" class="h-10 items-center justify-center invert hover:scale-110 transition"></img></div>
                                                </a>
                                                <a href="https://www.instagram.com/" class="border-2 border-solid border-quaternary w-12 h-12 rounded-full overflow-clip">
                                                    <div class="pt-[6px] p-2"><img src="{{URL('/images/instagram.svg')}}" class="items-center justify-center invert hover:scale-110 transition"></img></div>
                                                </a>
                                                <a href="https://www.twitter.com/" class="border-2 border-solid border-quaternary w-12 h-12 rounded-full overflow-clip">
                                                    <div class="pt-[10px] p-2"><img src="{{URL('/images/twitter.svg')}}" class="items-center justify-center invert hover:scale-110 transition"></img></div>
                                                </a>

                                            </div>
                                            <p class="text-[14px] font-sans pt-2 text-center w-full">Tag us in your photos!</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>

</html>