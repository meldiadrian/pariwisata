@if(isset($sidebarAds) && $sidebarAds->isNotEmpty())
    @foreach($sidebarAds as $ad)
    <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
        @if($ad->title)
            <h3 class="font-bold mb-4 border-l-4 border-red-700 pl-3 uppercase">{{ $ad->title }}</h3>
        @endif
        <div class="rounded-lg overflow-hidden">
            @if($ad->url)
                <a href="{{ $ad->url }}" target="_blank" rel="noopener noreferrer" title="{{ $ad->title }}">
                    <x-responsive-image 
                        :src="$ad->image" 
                        :alt="$ad->title"
                        class="w-full h-auto object-cover hover:opacity-90 transition duration-300"
                        :sizes="['small' => 300, 'medium' => 600]"
                    />
                </a>
            @else
                <x-responsive-image 
                    :src="$ad->image" 
                    :alt="$ad->title"
                    class="w-full h-auto object-cover"
                    :sizes="['small' => 300, 'medium' => 600]"
                />
            @endif
        </div>
    </div>
    @endforeach
@endif
