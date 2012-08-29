<?php

class Create_Artists {

	/**
	 * Make changes to the database.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('artists', function($table) {
		    $table->increments('id');
		    $table->string('artist', 255);
		    $table->text('description');
		    $table->boolean('visible')->default(1);
		    $table->text('comment')->nullable();
		    $table->timestamps();
		});
	}

	/**
	 * Revert the changes to the database.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('artists');
	}

}