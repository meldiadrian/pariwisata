<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class NewsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'title' => $this->title,
            'slug' => $this->slug,
            'summary' => $this->summary,
            'content' => $this->content,
            'thumbnail' => $this->thumbnail ? asset('storage/' . $this->thumbnail) : null,
            'category' => new CategoryResource($this->whenLoaded('category')),
            'user' => [
                'name' => $this->user->name,
            ],
            'views' => $this->views,
            'published_at' => $this->published_at,
            'created_at' => $this->created_at,
        ];
    }
}
