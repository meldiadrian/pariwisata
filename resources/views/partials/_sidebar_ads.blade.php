@if(isset($sidebarAds) && $sidebarAds->isNotEmpty())
    @foreach($sidebarAds as $ad)
    <div class="rounded-xl overflow-hidden shadow-sm border border-gray-100">
        @if($ad->url)
            <a href="{{ $ad->url }}" target="_blank" rel="noopener noreferrer" title="{{ $ad->title }}">
                <img src="{{ asset('storage/' . $ad->image) }}"
                     alt="{{ $ad->title }}"
                     class="w-full h-auto object-cover hover:opacity-90 transition duration-300">
            </a>
        @else
            <img src="{{ asset('storage/' . $ad->image) }}"
                 alt="{{ $ad->title }}"
                 class="w-full h-auto object-cover">
        @endif
    </div>
    @endforeach
@endif
