<?php

namespace Database\Factories;

use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\Project;
use Illuminate\Database\Eloquent\Factories\Factory;

class AttributeValueFactory extends Factory
{
    protected $model = AttributeValue::class;

    public function definition(): array
    {
        return [
            'attribute_id' => Attribute::factory(),
            'entity_id' => Project::factory(),
            'value' => fake()->word(),
        ];
    }

    public function forAttribute(Attribute $attribute): self
    {
        return $this->state(function (array $attributes) use ($attribute) {
            $value = match ($attribute->type) {
                'text' => fake()->sentence(),
                'date' => fake()->date(),
                'number' => (string) fake()->numberBetween(1, 100),
                'select' => fake()->word(),
                default => fake()->word(),
            };

            return [
                'attribute_id' => $attribute->id,
                'value' => $value,
            ];
        });
    }
} 