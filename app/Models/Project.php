<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Builder;

class Project extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'status'
    ];

    public function users(): BelongsToMany
    {
        return $this->belongsToMany(User::class, 'project_user');
    }

    public function timesheets(): HasMany
    {
        return $this->hasMany(Timesheet::class);
    }

    public function attributeValues(): HasMany
    {
        return $this->hasMany(AttributeValue::class, 'entity_id');
    }

    public function scopeFilter(Builder $query, array $filters): Builder
    {
        return $query
            ->when(data_get($filters, 'filters.name'), fn($q, $name) => $q->where('name', 'LIKE', "%$name%"))
            ->when(data_get($filters, 'filters.status'), fn($q, $status) => $q->where('status', $status))
            ->when(data_get($filters, 'filters.attributes'),
                fn($q, $attributes) => $q->whereHas('attributeValues', function ($subQ) use ($attributes) {
                    foreach ($attributes as $key => $value) {
                        $subQ->whereHas('attribute', fn($attrQ) => $attrQ->where('name', $key))
                            ->when(
                                is_array($value) && data_get($value, 'operator') && data_get($value, 'value'),
                                fn($subQ) => $subQ->where('value', data_get($value, 'operator'), data_get($value, 'value')),
                                fn($subQ) => $subQ->where('value', $value)
                            );
                    }
                })
            );
    }
}
