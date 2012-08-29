<?php

class Create_Albums_Labels {

	/**
	 * Make changes to the database.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('albums_labels', function($table){
			$table->engine = 'InnoDB';
			
			$table->increments('id');
			$table->integer('label_id')->index();
			$table->integer('album_id')->index();
		});
	}

	/**
	 * Revert the changes to the database.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('albums_labels');
	}

}