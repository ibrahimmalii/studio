<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\AttributeValue;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class AttributeValueController extends Controller
{
    public function index(): JsonResponse
    {
        $attributeValues = AttributeValue::with(['attribute', 'project'])->paginate(10);
        return response()->json($attributeValues);
    }

    public function store(Request $request): JsonResponse
    {
        $validated = $request->validate([
            'attribute_id' => 'required|exists:attributes,id',
            'entity_id' => 'required|exists:projects,id',
            'value' => 'required|string'
        ]);

        $attributeValue = AttributeValue::create($validated);
        return response()->json($attributeValue->load(['attribute', 'project']), 201);
    }

    public function show(AttributeValue $attributeValue): JsonResponse
    {
        return response()->json($attributeValue->load(['attribute', 'project']));
    }

    public function update(Request $request, AttributeValue $attributeValue): JsonResponse
    {
        $validated = $request->validate([
            'attribute_id' => 'required|exists:attributes,id',
            'entity_id' => 'required|exists:projects,id',
            'value' => 'required|string'
        ]);

        $attributeValue->update($validated);
        return response()->json($attributeValue->load(['attribute', 'project']));
    }

    public function destroy(AttributeValue $attributeValue): JsonResponse
    {
        $attributeValue->delete();
        return response()->json(null, 204);
    }
}
