<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Attribute;
use App\Http\Resources\AttributeResource;
use Illuminate\Http\Request;
use App\Traits\ApiResponse;

class AttributeController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $attributes = Attribute::with('values')->paginate(10);
        return AttributeResource::collection($attributes);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255|unique:attributes',
            'type' => 'required|in:' . implode(',', Attribute::getTypeOptions())
        ]);

        $attribute = Attribute::create($validated);
        return (new AttributeResource($attribute))
            ->setMessage('Attribute created successfully');
    }

    public function show(Attribute $attribute)
    {
        return new AttributeResource($attribute->load('values'));
    }

    public function update(Request $request, Attribute $attribute)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255|unique:attributes,name,' . $attribute->id,
            'type' => 'required|in:' . implode(',', Attribute::getTypeOptions())
        ]);

        $attribute->update($validated);
        return (new AttributeResource($attribute))
            ->setMessage('Attribute updated successfully');
    }

    public function destroy(Attribute $attribute)
    {
        $attribute->delete();
        return $this->successResponse(null, 'Attribute deleted successfully');
    }
}
