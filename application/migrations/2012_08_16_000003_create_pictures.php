<?php

class Create_Pictures {

	/**
	 * Make changes to the database.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('pictures',function($table){
			$table->engine = 'InnoDB';

			$table->increments('id');
			$table->integer('album_id')->index()->nullable();
			// if nullable
			$table->integer('event_id')->index()->nullable();
			$table->integer('blog_id')->index()->nullable();
			$table->string('location',300);
			$table->string('thumbbig',300);
			$table->string('thumbsmall', 300);
			$table->boolean('visible')->default(1);
			$table->text('comment')->nullable();
			$table->timestamps();
			// $table->foreign('addon_id')->references('id')->on('addons')->on_delete('no action');
			// $table->foreign('addon_id')->references('id')->on('addons')->on_update('cascade');
		});
	}

	/**
	 * Revert the changes to the database.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('pictures');
	}

}