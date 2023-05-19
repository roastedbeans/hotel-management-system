@props(['disabled' => false])

<input {{ $disabled ? 'disabled' : '' }} {!! $attributes->merge(['class' => 'p-2 border-0 focus:ring-0 focus:outline-none rounded-md shadow-sm placeholder-quaternary']) !!}>