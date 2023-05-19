@vite('resources/css/app.css')
<x-authentication-card>
    <x-slot name="logo">
        <x-auth-logo />
    </x-slot>

    <x-validation-errors class="mb-4" />

    @if (session('status'))
    <div class="mb-4 font-medium text-sm text-green-400">
        {{ session('status') }}
    </div>
    @endif
    <div class="flex items-center justify-center overflow-hidden w-full h-fit">
        <form method="POST" action="{{ route('login') }}" class="w-full h-full p-4 m-0">
            @csrf
            <div>
                <x-label for="email" value="{{ __('Email') }}" />
                <x-input id="email" class="block mt-1 w-full outline-none border-0" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
            </div>

            <div class="mt-4">
                <x-label for="password" value="{{ __('Password') }}" />
                <x-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="current-password" />
            </div>

            <div class="block mt-4">
                <label for="remember_me" class="flex items-center">
                    <x-checkbox id="remember_me" name="remember" class="text-primary" />
                    <span class="ml-2 text-sm text-quaternary">{{ __('Remember me') }}</span>
                </label>
            </div>
            <div class="flex flex-col items-center justify-center mt-4 gap-4 mb-10">
                <a class="underline text-sm text-quaternary hover:opacity-80 rounded-md focus:outline-none" href="#">
                    {{ __('Forgot your password?') }}
                </a>
                <x-button class="font-semibold">
                    {{ __('Log in') }}
                </x-button>
                <p class="font-sans text-quaternary">or</p>
                <a href="register" class="inline-flex items-center px-2 py-2 bg-tertiary border border-transparent rounded-md font-semibold text-xs text-primary uppercase tracking-widest hover:opacity-80 focus:bg-quaternary active:bg-quaternary focus:outline-none focus:ring-[1px] focus:ring-primary focus:ring-offset-2 transition ease-in-out duration-150">
                    REGISTER
                </a>

            </div>
        </form>
    </div>
</x-authentication-card>