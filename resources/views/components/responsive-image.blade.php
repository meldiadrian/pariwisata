@if($src)
    <picture>
        @if($useWebP && $webpSrc)
            <source 
                type="image/webp" 
                @if($srcset)
                    srcset="{{ $srcset }}"
                @else
                    srcset="{{ $webpSrc }}"
                @endif
            >
        @endif
        
        <img 
            src="{{ $src }}" 
            alt="{{ $alt }}"
            decoding="async"
            @if($class) class="{{ $class }}" @endif
            @if($width) width="{{ $width }}" @endif
            @if($height) height="{{ $height }}" @endif
            @if($lazy) loading="lazy" @endif
            @if($fetchpriority) fetchpriority="{{ $fetchpriority }}" @endif
        >
    </picture>
@endif
