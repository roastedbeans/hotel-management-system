@props(['value'])

<label {{ $attributes->merge(['class' => 'font-sen block font-medium text-sm text-quaternary']) }}>
    {{ $value ?? $slot }}
</label>