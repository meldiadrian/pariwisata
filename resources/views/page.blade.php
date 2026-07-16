@extends('layouts.frontend')

@section('title', $page->seo_title ?? $page->title . ' - ' . ($setting->site_name ?? 'Portal Berita'))

@section('content')
<div class="max-w-4xl mx-auto bg-white p-8 shadow-sm rounded-lg">
    <h1 class="text-3xl font-bold text-gray-900 mb-6">{{ $page->title }}</h1>
    
    <div class="prose max-w-none text-gray-700 leading-relaxed">
        {!! $page->content !!}
    </div>
</div>
@endsection
