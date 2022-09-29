<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('info', function (Blueprint $table) {
            $table->id()->autoIncrement();
            $table->string('judul_info');
            $table->string('isi_info');
            $table->bigInteger('student')->default(0);
            // $table->enum('category', ['link', 'content', 'file']);
            // $table->text('content')->nullable();
            // $table->string('file')->nullable();
            // $table->string('url')->nullable();
            // $table->string('order');
            $table->integer('status');
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
        Schema::dropIfExists('info');
    }
}
