<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\ProjectRequest;
use App\Models\Project;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    public function index(Request $request): JsonResponse
    {
        $projects = Project::query()
            ->filter($request->only('filters'))
            ->with(['users', 'attributeValues.attribute'])
            ->paginate(10);

        return response()->json($projects);
    }

    public function store(ProjectRequest $request): JsonResponse
    {
        $project = Project::create($request->only(['name', 'status']));

        if ($request->has('user_ids')) {
            $project->users()->sync($request->user_ids);
        }

        if ($request->has('attributes')) {
            foreach ($request->attributes as $attribute) {
                $project->attributeValues()->create([
                    'attribute_id' => $attribute['attribute_id'],
                    'value' => $attribute['value']
                ]);
            }
        }

        return response()->json($project->load(['users', 'attributeValues.attribute']), 201);
    }

    public function show(Project $project): JsonResponse
    {
        return response()->json($project->load(['users', 'attributeValues.attribute']));
    }

    public function update(ProjectRequest $request, Project $project): JsonResponse
    {
        $project->update($request->only(['name', 'status']));

        if ($request->has('user_ids')) {
            $project->users()->sync($request->user_ids);
        }

        if ($request->has('attributes')) {
            $project->attributeValues()->delete();
            foreach ($request->attributes as $attribute) {
                $project->attributeValues()->create([
                    'attribute_id' => $attribute['attribute_id'],
                    'value' => $attribute['value']
                ]);
            }
        }

        return response()->json($project->load(['users', 'attributeValues.attribute']));
    }

    public function destroy(Project $project): JsonResponse
    {
        $project->delete();
        return response()->json(null, 204);
    }
}
