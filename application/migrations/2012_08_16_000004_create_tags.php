<?php

class Create_Tags {

	/**
	 * Make changes to the database.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tags', function($table) {
		    $table->increments('id');
		    $table->string('tag', 255);
		    $table->text('description');
		    $table->boolean('visible')->default(1);
		    $table->text('comment');
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
		Schema::drop('tags');
	}

}