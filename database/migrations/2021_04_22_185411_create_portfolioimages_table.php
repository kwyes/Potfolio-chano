<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePortfolioimagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('portfolioimages', function (Blueprint $table) {
            $table->id();
            $table->foreignId('portfolio_id')->references('id')->on('portfolio')->onDelete('cascade');
            $table->string('FileName');
            $table->string('OriginalFileName');
            $table->string('URL');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('portfolioimages');
    }
}
