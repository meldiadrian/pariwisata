<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;

class LivewireUploadSecurityTest extends TestCase
{
    use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();
        
        // Setup storage for testing
        Storage::fake('public');
    }

    /**
     * Test 1: Authenticated user can access upload endpoint
     */
    public function test_authenticated_user_can_access_upload_endpoint(): void
    {
        $user = User::factory()->create();
        
        $response = $this->actingAs($user)
            ->post('/livewire/upload-file', [
                'file' => UploadedFile::fake()->image('test.jpg', 100, 100)
            ]);

        // Should not be 403 Forbidden
        $this->assertNotEquals(403, $response->status());
    }

    /**
     * Test 2: Unauthenticated user cannot upload
     */
    public function test_unauthenticated_user_cannot_upload(): void
    {
        $response = $this->post('/livewire/upload-file', [
            'file' => UploadedFile::fake()->image('test.jpg')
        ]);

        // Should return 403 or redirect to login
        $this->assertTrue(
            $response->status() === 403 || $response->status() === 302
        );
    }

    /**
     * Test 3: Dangerous file extensions are blocked
     */
    public function test_dangerous_file_extensions_are_blocked(): void
    {
        $user = User::factory()->create();
        
        $dangerousFiles = [
            'malicious.php',
            'virus.exe',
            'script.js',
            'batch.bat',
            'shell.sh',
        ];

        foreach ($dangerousFiles as $filename) {
            $extension = pathinfo($filename, PATHINFO_EXTENSION);
            $file = UploadedFile::fake()->create($filename, 100, "application/x-{$extension}");
            
            $response = $this->actingAs($user)
                ->post('/livewire/upload-file', [
                    'file' => $file
                ]);

            // Should be blocked (403 or validation error)
            $this->assertTrue(
                $response->status() === 403 || $response->status() === 422,
                "Failed to block {$filename}"
            );
        }
    }

    /**
     * Test 4: Valid image files are accepted
     */
    public function test_valid_image_files_are_accepted(): void
    {
        $user = User::factory()->create();
        
        $validFiles = [
            UploadedFile::fake()->image('photo.jpg'),
            UploadedFile::fake()->image('graphic.png'),
            UploadedFile::fake()->image('animation.gif'),
            UploadedFile::fake()->create('image.webp', 100, 'image/webp'),
        ];

        foreach ($validFiles as $file) {
            $response = $this->actingAs($user)
                ->post('/livewire/upload-file', [
                    'file' => $file
                ]);

            // Should not be forbidden
            $this->assertNotEquals(403, $response->status());
        }
    }

    /**
     * Test 5: File size limit is enforced
     */
    public function test_file_size_limit_is_enforced(): void
    {
        $user = User::factory()->create();
        
        // Create file larger than 10MB (10240KB)
        $largeFile = UploadedFile::fake()->create('large.jpg', 11000);
        
        $response = $this->actingAs($user)
            ->post('/livewire/upload-file', [
                'file' => $largeFile
            ]);

        // Should be rejected (422 validation error)
        $this->assertEquals(422, $response->status());
    }

    /**
     * Test 6: Double extension files are blocked
     */
    public function test_double_extension_files_are_blocked(): void
    {
        $user = User::factory()->create();
        
        // File with double extension (e.g., malicious.php.jpg)
        $file = UploadedFile::fake()->create('malicious.php.jpg', 100, 'image/jpeg');
        
        $response = $this->actingAs($user)
            ->post('/livewire/upload-file', [
                'file' => $file
            ]);

        // Should be blocked
        $this->assertEquals(403, $response->status());
    }

    /**
     * Test 7: MIME type is validated
     */
    public function test_mime_type_is_validated(): void
    {
        $user = User::factory()->create();
        
        // Try to upload PHP file disguised as image
        $file = UploadedFile::fake()->create('fake.jpg', 100, 'application/x-php');
        
        $response = $this->actingAs($user)
            ->post('/livewire/upload-file', [
                'file' => $file
            ]);

        // Should be blocked due to MIME type
        $this->assertEquals(403, $response->status());
    }

    /**
     * Test 8: Temporary files are stored in correct location
     */
    public function test_temporary_files_stored_in_correct_location(): void
    {
        $disk = config('livewire.temporary_file_upload.disk', 'public');
        $directory = config('livewire.temporary_file_upload.directory', 'livewire-tmp');
        
        $this->assertEquals('public', $disk);
        $this->assertEquals('livewire-tmp', $directory);
    }

    /**
     * Test 9: Cleanup configuration is enabled
     */
    public function test_cleanup_configuration_is_enabled(): void
    {
        $cleanupEnabled = config('livewire.temporary_file_upload.cleanup', true);
        
        $this->assertTrue($cleanupEnabled, 'Cleanup should be enabled');
    }

    /**
     * Test 10: Rate limiting is configured
     */
    public function test_rate_limiting_is_configured(): void
    {
        $middleware = config('livewire.temporary_file_upload.middleware', '');
        
        $this->assertStringContainsString('throttle', $middleware, 'Rate limiting should be configured');
    }

    /**
     * Test 11: Storage disk is properly configured
     */
    public function test_storage_disk_is_properly_configured(): void
    {
        $diskConfig = config('filesystems.disks.public');
        
        $this->assertNotNull($diskConfig);
        $this->assertArrayHasKey('driver', $diskConfig);
        $this->assertArrayHasKey('root', $diskConfig);
        $this->assertEquals('local', $diskConfig['driver']);
    }

    /**
     * Test 12: Security middleware exists
     */
    public function test_security_middleware_exists(): void
    {
        $middlewareFile = app_path('Http/Middleware/SecureLivewireUploads.php');
        
        $this->assertFileExists($middlewareFile, 'Security middleware should exist');
    }
}
