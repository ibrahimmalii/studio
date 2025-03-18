<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Http\Requests\Auth\RegisterRequest;
use App\Http\Resources\UserResource;
use App\Models\User;
use App\Traits\ApiResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    use ApiResponse;

    public function register(RegisterRequest $request)
    {
        $user = User::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);

        $token = $user->createToken('auth_token')->accessToken;

        return (new UserResource($user))
            ->additional([
                'token' => $token
            ])
            ->setMessage('User registered successfully');
    }

    public function login(LoginRequest $request)
    {
        if (!Auth::attempt($request->only('email', 'password'))) {
            return $this->errorResponse('Invalid credentials', 401);
        }

        $user = Auth::user();
        $token = $user->createToken('auth_token')->accessToken;

        return (new UserResource($user))
            ->additional([
                'token' => $token
            ])
            ->setMessage('Login successful');
    }

    public function logout()
    {
        // Delete all tokens for the authenticated user
        auth()->user()->tokens()->delete();

        return $this->successResponse(null, 'Logged out successfully');
    }
}
