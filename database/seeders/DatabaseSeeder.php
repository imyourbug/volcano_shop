<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Admin;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        User::create([
            'name' => 'duongvankhai2022001@gmail.com',
            'email' => 'duongvankhai2022001@gmail.com',
            'password' => Hash::make(1),
        ]);

        Admin::create([
            'name' => 'duongvankhai2022001@gmail.com',
            'email' => 'duongvankhai2022001@gmail.com',
            'password' => Hash::make(1),
        ]);
    }
}
