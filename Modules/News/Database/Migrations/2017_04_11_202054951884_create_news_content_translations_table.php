<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsContentTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news__content_translations', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            // Your translatable fields

            $table->integer('content_id')->unsigned();
            $table->string('locale')->index();
            $table->unique(['content_id', 'locale']);
            $table->foreign('content_id')->references('id')->on('news__contents')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('news__content_translations', function (Blueprint $table) {
            $table->dropForeign(['content_id']);
        });
        Schema::dropIfExists('news__content_translations');
    }
}
