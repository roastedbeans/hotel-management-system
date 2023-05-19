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
    <h1 class="text-2xl font-bold mb-2">Create Booking</h1>
    <!-- Booking Form -->
    <form action="{{ route('guest.booking') }}" method="POST">
        @csrf
        <div class="flex flex-col gap-4">
            <div class="flex flex-row gap-6 items-end justify-center w-full">
                <!-- Booking details -->
                <div class="flex-1">
                    <label for="guest_name" class="block font-medium">Name</label>
                    <input type="text" name="guest_name" id="guest_name" class="w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>

                <div class="flex-1">
                    <label for="guest_number" class="block font-medium">Number</label>
                    <input type="number" name="guest_number" id="guest_number" class=" w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>

                <div class="flex-1">
                    <label for="check_in_date" class="block font-medium">Check-in Date</label>
                    <input type="date" name="check_in_date" id="check_in_date" class="w-full border-gray-300 rounded-md px-3 py-2 drop-shadow-md" required>
                </div>

                <div class="flex-1">
                    <label for="check_out_date" class="block font-medium">Check-out Date</label>
                    <input type="date" name="check_out_date" id="check_out_date" class="w-full border-gray-300 rounded-md px-3 py-2 drop-shadow-md" required>
                </div>
            </div>
            <div class="flex flex-row gap-6 items-end justify-center w-full">
                <!-- Booking details -->
                <div class="flex-1">
                    <label for="room_type" class="block font-medium">Room Type</label>
                    <select onchange="togglePriceInput()" name="room_type" id="room_type" class="w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md">
                        <option value="Single">Single</option>
                        <option value="Couples">Couples</option>
                        <option value="Deluxe">Deluxe</option>
                        <option value="Family">Family</option>
                        <option value="Luxury">Luxury</option>
                    </select>
                </div>
                <div class="flex-1">
                    <label for="room_price" class="block font-medium">Room Price</label>
                    <input readonly type="text" name="room_price" id="room_price" class="w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md outline-none pointer-events-none">
                </div>

                <div class="flex-1">
                    <label for="payment_method" class="block font-medium">Payment Method</label>
                    <select onchange="toggleCardNumberInput()" name="payment_method" id="payment_method" class="w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md">
                        <option value="Visa">Visa</option>
                        <option value="BDO">BDO</option>
                        <option value="Cash">Cash</option>
                    </select>
                </div>

                <script>
                    function togglePriceInput() {
                        var roomType = document.getElementById('room_type');
                        var roomPrice = document.getElementById('room_price');
                        if (roomType.value === 'Single') {
                            roomPrice.value = '₱1500.00';
                        } else if (roomType.value === 'Couples') {
                            roomPrice.value = "₱2500.00";
                        } else if (roomType.value === 'Deluxe') {
                            roomPrice.value = "₱3500.00";
                        } else if (roomType.value === 'Family') {
                            roomPrice.value = "₱6500.00";
                        } else if (roomType.value === 'Luxury') {
                            roomPrice.value = "₱9000.00";
                        } else roomPrice.value = "₱0.00";
                    }

                    function toggleCardNumberInput() {
                        var selectElement = document.getElementById('payment_method');
                        var cardNumberInput = document.getElementById('card_number');
                        if (selectElement.value === 'Cash') {
                            cardNumberInput.readOnly = true;
                            cardNumberInput.style.outline = 'none';
                            cardNumberInput.style.pointerEvents = 'none';
                            cardNumberInput.value = 'n/a';
                        } else {
                            cardNumberInput.readOnly = false;
                            cardNumberInput.style.outline = '';
                            cardNumberInput.style.pointerEvents = '';
                            cardNumberInput.value = '';
                        }
                    }
                </script>
                <div class="flex-1">
                    <label for="card_number" class="block font-medium">Card Number</label>
                    <input type="text" pattern="[0-9]*" maxlength="16" minlength="" name="card_number" id="card_number" class=" w-full border-gray-300 rounded-md px-3 py-[10px] drop-shadow-md" required>
                </div>
                <div>
                    <button type="submit" class="bg-primary text-quaternary drop-shadow-md hover:opacity-80 hover:scale-110 transition-all text-2xl font-sansBold px-4 py-1 rounded-md">BOOK</button>
                </div>
            </div>
        </div>
        <!-- Submit Button -->

    </form>
</div>