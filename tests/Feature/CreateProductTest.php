<?php

namespace Tests\Feature;

use App\Models\Product;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Http\UploadedFile;
use Tests\TestCase;

class CreateProductTest extends TestCase
{
    /**
     * A basic feature test example.
     */
    public function test_create_product_by_file(): void
    {
        Product::truncate();
        $file = new UploadedFile(storage_path('/app/public/data/sample.xlsx'), 'sample.xlsx', 'xlsx', null, true);
        
        $response = $this->post('/api/upload', [
            'file' => $file
        ], []);

        // $this->assertDatabaseCount('products', 2);
        $response->assertJson([
            'status' => 0
        ]);
    }
}
