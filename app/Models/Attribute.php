<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Attribute extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'type'
    ];

    public function attributeValues(): HasMany
    {
        return $this->hasMany(AttributeValue::class);
    }

    public static function getTypeOptions(): array
    {
        return ['text', 'date', 'number', 'select'];
    }
}
