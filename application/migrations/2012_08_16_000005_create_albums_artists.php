<?php

class Create_Albums_Artists {

	/**
	 * Make changes to the database.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('albums_artists', function($table){
			$table->engine = 'InnoDB';
			
			$table->increments('id');
			$table->integer('album_id')->index();
			$table->integer('artist_id')->index();
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
		Schema::drop('albums_artists');
	}

}