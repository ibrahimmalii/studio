<?php

namespace Database\Seeders;

use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\Project;
use App\Models\Timesheet;
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
        $admin = User::factory()->create([
            'first_name' => 'Admin',
            'last_name' => 'User',
            'email' => 'admin@example.com',
            'password' => Hash::make('password')
        ]);

        $users = User::factory(5)->create();
        $users->push($admin);

        $attributes = [
            Attribute::factory()->create(['name' => 'department', 'type' => 'text']),
            Attribute::factory()->create(['name' => 'start_date', 'type' => 'date']),
            Attribute::factory()->create(['name' => 'end_date', 'type' => 'date']),
        ];

        Project::factory(10)
            ->create()
            ->each(function ($project) use ($users, $attributes) {
                $project->users()->attach(
                    $users->random(rand(1, 3))->pluck('id')->toArray()
                );

                foreach ($attributes as $attribute) {
                    AttributeValue::factory()
                        ->forAttribute($attribute)
                        ->create([
                            'entity_id' => $project->id,
                            'attribute_id' => $attribute->id,
                        ]);
                }

                Timesheet::factory(rand(3, 8))
                    ->create([
                        'project_id' => $project->id,
                        'user_id' => $users->random()->id,
                    ]);
            });
    }
}
