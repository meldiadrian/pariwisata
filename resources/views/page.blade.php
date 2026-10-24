@extends('layouts.frontend')

@section('title', $page->seo_title ?? $page->title . ' - ' . ($setting->site_name ?? 'Portal Berita'))

@section('content')
<div class="max-w-4xl mx-auto bg-white p-4 sm:p-6 md:p-8 shadow-sm rounded-lg">
    <h1 class="text-2xl sm:text-3xl font-bold text-gray-900 mb-4 sm:mb-6">{{ $page->title }}</h1>
    
    <div class="prose prose-sm sm:prose max-w-none text-gray-700 leading-relaxed">
        {!! $page->content !!}
    </div>
</div>
@endsection
