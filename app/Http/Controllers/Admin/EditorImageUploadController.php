<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Services\ContentImageService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class EditorImageUploadController extends Controller
{
    public function __invoke(Request $request, ContentImageService $contentImages): JsonResponse
    {
        $validated = $request->validate([
            'image' => ['required', 'file', 'image', 'mimes:jpeg,jpg,png,gif,webp', 'max:15360'],
        ]);

        $url = $contentImages->saveUploadedImage($validated['image']);

        return response()->json([
            'url' => $url,
        ]);
    }
}

