<?php

class Create_Events {

	/**
	 * Make changes to the database.
	 * Create the albums table in the database
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('events', function($table) {
			$table->engine = 'InnoDB';
			
		    $table->increments('id');
		    $table->string('title', 255);
		    $table->text('description');
		    $table->date('date');
		    $table->integer('user_id')->index();
		    //$table->integer('label ou artiste _id')->index();
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
		Schema::drop('events');
	}

}