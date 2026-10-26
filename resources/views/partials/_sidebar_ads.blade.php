@if(isset($sidebarAds) && $sidebarAds->isNotEmpty())
    @foreach($sidebarAds as $ad)
        <div class="bg-white rounded-xl shadow-sm border border-gray-100 w-full max-w-[275px] mx-auto flex flex-col overflow-hidden">
            @if($ad->title)
                <div class="p-4 pb-2">
                    <h3 class="font-bold border-l-4 border-red-700 pl-3 uppercase text-sm leading-snug text-gray-900">
                        {{ $ad->title }}
                    </h3>
                </div>
            @endif
            <div class="p-3 {{ $ad->title ? 'pt-1' : '' }} w-full flex items-center justify-center [&_picture]:block [&_picture]:w-full">
                @if($ad->url)
                    <a href="{{ $ad->url }}" target="_blank" rel="noopener noreferrer"
                       title="{{ $ad->title }}"
                       class="block w-full">
                        <x-responsive-image
                            :src="$ad->image"
                            :alt="$ad->title"
                            class="w-full h-auto object-contain rounded-lg hover:opacity-95 transition duration-300 block"
                            :sizes="['small' => 300, 'medium' => 600]"
                        />
                    </a>
                @else
                    <div class="w-full">
                        <x-responsive-image
                            :src="$ad->image"
                            :alt="$ad->title"
                            class="w-full h-auto object-contain rounded-lg block"
                            :sizes="['small' => 300, 'medium' => 600]"
                        />
                    </div>
                @endif
            </div>
        </div>
    @endforeach
@endif