<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('attributes', function (Blueprint $table) {
            $table->id();
            $table->string('name')->unique();
            $table->enum('type', ['text', 'date', 'number', 'select'])->default('text');
            $table->timestamps();
        });

        Schema::create('attribute_values', function (Blueprint $table) {
            $table->id();
            $table->foreignId('attribute_id')->constrained()->onDelete('cascade');
            $table->unsignedBigInteger('entity_id');
            $table->string('value');
            $table->timestamps();

            $table->foreign('entity_id')
                  ->references('id')
                  ->on('projects')
                  ->onDelete('cascade');

            $table->unique(['attribute_id', 'entity_id']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('attribute_values');
        Schema::dropIfExists('attributes');
    }
};
