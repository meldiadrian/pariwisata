<?php

namespace App\Console\Commands;

use App\Services\PageCacheService;
use Illuminate\Console\Command;

class ClearPageCacheCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'page-cache:clear {--url= : Specific URL to purge from cache}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Clear all or specific cached pages from the page cache system';

    /**
     * Execute the console command.
     */
    public function handle(PageCacheService $pageCache): int
    {
        $specificUrl = $this->option('url');

        if ($specificUrl) {
            $pageCache->forgetUrl($specificUrl);
            $this->info("Page cache for URL [{$specificUrl}] cleared successfully.");
            return Command::SUCCESS;
        }

        $pageCache->flush();
        $this->info('All page cache entries cleared successfully.');

        return Command::SUCCESS;
    }
}
