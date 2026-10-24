@if(isset($sidebarAds) && $sidebarAds->isNotEmpty())
    @foreach($sidebarAds as $ad)
        <div
            class="bg-white rounded-xl shadow-sm border border-gray-100 w-[275px] h-[375px] mx-auto flex flex-col overflow-hidden">
            @if($ad->title)
                <h3 class="font-bold mb-2 mt-3 border-l-4 border-red-700 pl-3 uppercase text-sm shrink-0">{{ $ad->title }}</h3>
            @endif
           <div class="overflow-hidden flex-1 relative w-full h-full">
    @if($ad->url)
        <a href="{{ $ad->url }}" target="_blank" rel="noopener noreferrer"
           title="{{ $ad->title }}"
           class="block w-full h-full">
            <x-responsive-image
                :src="$ad->image"
                :alt="$ad->title"
                class="absolute inset-0 m-auto w-[92%] h-[92%] object-contain rounded-xl hover:opacity-90 transition duration-300"
                :sizes="['small' => 300, 'medium' => 600]"
            />
        </a>
    @else
        <x-responsive-image
            :src="$ad->image"
            :alt="$ad->title"
            class="absolute inset-0 m-auto w-[92%] h-[92%] object-contain rounded-xl"
            :sizes="['small' => 300, 'medium' => 600]"
        />
    @endif
</div>
        </div>
    @endforeach
@endif