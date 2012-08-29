<?php

class Create_Labels {

	/**
	 * Make changes to the database.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('labels', function($table) {
		    $table->increments('id');
		    $table->string('label', 255);
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
		Schema::drop('labels');
	}

}