<?php

namespace Database\Factories;

use App\Models\Attribute;
use Illuminate\Database\Eloquent\Factories\Factory;

class AttributeFactory extends Factory
{
    protected $model = Attribute::class;

    public function definition(): array
    {
        return [
            'name' => fake()->unique()->word(),
            'type' => fake()->randomElement(['text', 'date', 'number', 'select']),
        ];
    }

    public function text(): self
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'text',
        ]);
    }

    public function date(): self
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'date',
        ]);
    }

    public function number(): self
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'number',
        ]);
    }

    public function select(): self
    {
        return $this->state(fn (array $attributes) => [
            'type' => 'select',
        ]);
    }
} 