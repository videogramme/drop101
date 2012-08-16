<?php

class Create_Albums_Tags {

	/**
	 * Make changes to the database.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('albums_tags', function($table){
			$table->increments('id');
			$table->integer('tag_id')->index();
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
		Schema::drop('albums_tags');
	}

}