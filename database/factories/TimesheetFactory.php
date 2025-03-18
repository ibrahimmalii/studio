<?php

namespace Database\Factories;

use App\Models\Project;
use App\Models\Timesheet;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class TimesheetFactory extends Factory
{
    protected $model = Timesheet::class;

    public function definition(): array
    {
        return [
            'task_name' => fake()->sentence(3),
            'date' => fake()->dateTimeBetween('-30 days', 'now'),
            'hours' => fake()->numberBetween(1, 8),
            'user_id' => User::factory(),
            'project_id' => Project::factory(),
        ];
    }
} 