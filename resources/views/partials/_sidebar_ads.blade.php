@if(isset($sidebarAds) && $sidebarAds->isNotEmpty())
    @foreach($sidebarAds as $ad)
    <div class="bg-white p-4 rounded-xl shadow-sm border border-gray-100 w-[276px] h-[345px] mx-auto flex flex-col">
        @if($ad->title)
            <h3 class="font-bold mb-3 border-l-4 border-red-700 pl-3 uppercase text-sm shrink-0">{{ $ad->title }}</h3>
        @endif
        <div class="rounded-lg overflow-hidden flex-1 relative">
            @if($ad->url)
                <a href="{{ $ad->url }}" target="_blank" rel="noopener noreferrer" title="{{ $ad->title }}" class="block w-full h-full">
                    <x-responsive-image 
                        :src="$ad->image" 
                        :alt="$ad->title"
                        class="absolute inset-0 w-full h-full object-cover hover:opacity-90 transition duration-300"
                        :sizes="['small' => 300, 'medium' => 600]"
                    />
                </a>
            @else
                <x-responsive-image 
                    :src="$ad->image" 
                    :alt="$ad->title"
                    class="absolute inset-0 w-full h-full object-cover"
                    :sizes="['small' => 300, 'medium' => 600]"
                />
            @endif
        </div>
    </div>
    @endforeach
@endif
