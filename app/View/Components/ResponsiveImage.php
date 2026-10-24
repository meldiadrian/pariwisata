<?php

namespace App\View\Components;

use App\Helpers\ImageHelper;
use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class ResponsiveImage extends Component
{
    public ?string $src;
    public string $alt;
    public string $class;
    public ?string $width;
    public ?string $height;
    public bool $lazy;
    public array $sizes;
    public bool $useWebP;
    public ?string $webpSrc;
    public ?string $srcset;

    /**
     * Create a new component instance.
     */
    public function __construct(
        ?string $src = null,
        string $alt = '',
        string $class = '',
        ?string $width = null,
        ?string $height = null,
        bool $lazy = true,
        array $sizes = [],
        bool $useWebp = true
    ) {
        $this->src = $src;
        $this->alt = $alt;
        $this->class = $class;
        $this->width = $width;
        $this->height = $height;
        $this->lazy = $lazy;
        $this->sizes = $sizes;
        $this->useWebP = $useWebp;

        // Generate WebP version if enabled
        if ($useWebp && $src) {
            $this->webpSrc = ImageHelper::getWebPUrl($src, false);
            
            // Generate srcset for responsive images
            if (!empty($sizes)) {
                $this->srcset = ImageHelper::generateSrcSet($src, $sizes);
            } else {
                $this->srcset = null;
            }
        } else {
            $this->webpSrc = null;
            $this->srcset = null;
        }

        // Ensure src is a full URL
        if ($src) {
            $this->src = ImageHelper::getImageUrl($src);
        }
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.responsive-image');
    }
}
