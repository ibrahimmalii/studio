<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\TimesheetRequest;
use App\Models\Timesheet;
use App\Http\Resources\TimesheetResource;
use App\Traits\ApiResponse;

class TimesheetController extends Controller
{
    use ApiResponse;

    public function index()
    {
        $timesheets = Timesheet::with(['user', 'project'])->paginate(10);
        return TimesheetResource::collection($timesheets);
    }

    public function store(TimesheetRequest $request)
    {
        $timesheet = Timesheet::create($request->validated());
        return (new TimesheetResource($timesheet))
            ->setMessage('Timesheet created successfully');
    }

    public function show(Timesheet $timesheet)
    {
        return new TimesheetResource($timesheet->load(['user', 'project']));
    }

    public function update(TimesheetRequest $request, Timesheet $timesheet)
    {
        $timesheet->update($request->validated());
        return (new TimesheetResource($timesheet))
            ->setMessage('Timesheet updated successfully');
    }

    public function destroy(Timesheet $timesheet)
    {
        $timesheet->delete();
        return $this->successResponse(null, 'Timesheet deleted successfully');
    }
}
