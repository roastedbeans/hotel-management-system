<div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-quaternary">
    <div class="w-full sm:max-w-md mt-6 px-6 py-4 bg-[url('/public/images/in-the-press-bg.png')] drop-shadow-md overflow-hidden sm:rounded-lg bg-center -brightness-150">
        <div>
            <a href='/home' class=" font-serif text-[52px] hover:opacity-80 hover:scale-110 text-quaternary transition-all absolute mt-10 ml-4 z-10">
                < </a>
        </div>
        <div class="my-16 justify-center w-full flex z-10 drop-shadow-lg">
            {{ $logo }}
        </div>
        {{ $slot }}
    </div>
</div>