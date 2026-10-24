<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\News;
use App\Models\Category;
use App\Models\User;
use App\Models\Tag;
use Illuminate\Support\Str;

class NewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $user = User::first();
        $categories = Category::all();
        $tags = Tag::all();

        foreach ($categories as $category) {
            for ($i = 1; $i <= 3; $i++) {
                $title = "Berita $category->name ke-$i";
                $news = News::create([
                    'category_id' => $category->id,
                    'user_id' => $user->id,
                    'title' => $title,
                    'slug' => Str::slug($title) . '-' . Str::random(5),
                    'summary' => "Ringkasan berita $category->name yang ke-$i. Ini adalah ringkasan berita yang singkat.",
                    'content' => "<p>Ini adalah isi berita $category->name yang ke-$i. Berita ini berisi informasi lengkap mengenai kejadian terbaru.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>",
                    'status' => 'publish',
                    'published_at' => now(),
                    'is_headline' => $i == 1,
                    'is_trending' => $i == 2,
                    'is_breaking' => $i == 3 && $category->name == 'Nasional',
                    'views' => rand(100, 1000),
                ]);

                $news->tags()->attach($tags->random(2));
            }
        }
    }
}
