<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ApiResource extends JsonResource
{
    protected bool $status = true;
    protected string $message = 'Success';

    public function setStatus($status): static
    {
        $this->status = $status;
        return $this;
    }

    public function setMessage($message): static
    {
        $this->message = $message;
        return $this;
    }

    public function additional($additional): ApiResource
    {
        return parent::additional(array_merge([
            'status' => $this->status,
            'message' => $this->message,
        ], $additional));
    }
}
