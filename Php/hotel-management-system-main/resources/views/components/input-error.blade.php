@props(['for'])

@error($for)
<p {{ $attributes->merge(['class' => 'text-sm text-red-50']) }}>{{ $message }}</p>
@enderror