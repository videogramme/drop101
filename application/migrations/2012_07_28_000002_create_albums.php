<?php

class Create_Albums {

	/**
	 * Make changes to the database.
	 * Create the albums table in the database
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('albums', function($table) {
			$table->engine = 'InnoDB';
			
		    $table->increments('id');
		    $table->string('name', 255);
		    // $table->string('artist', 255);
		    // $table->string('label', 255);
		    $table->integer('year');
		    $table->text('description');
		    $table->text('tracklist');
		    $table->integer('price');
		    $table->integer('quantity');
		    // $table->text('album_tags');
		    $table->integer('user_id')->index();
		    // $table->integer('picture_id')->index();
		    $table->boolean('visible')->default(1);
		    $table->text('comment')->nullable();
		    $table->timestamps();
		});
	}

	/**
	 * Revert the changes to the database.
	 * In this case we just drop the table
	 * @return void
	 */
	public function down()
	{
		Schema::drop('albums');
	}

}