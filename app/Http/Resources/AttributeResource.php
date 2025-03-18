<?php

namespace App\Http\Resources;

class AttributeResource extends ApiResource
{
    public function toArray($request): array
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'type' => $this->type,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'values' => AttributeValueResource::collection($this->whenLoaded('values')),
        ];
    }
}
