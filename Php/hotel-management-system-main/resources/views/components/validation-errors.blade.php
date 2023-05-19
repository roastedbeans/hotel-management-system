@if ($errors->any())
<div {{ $attributes }}>
    <div class="font-medium text-red-200">{{ __('Whoops! Something went wrong.') }}</div>

    <ul class="mt-3 list-disc list-inside text-sm text-red-200">
        @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    </ul>
</div>
@endif