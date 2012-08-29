<?php

class Create_Users {

	/**
	 * Make changes to the database.
	 * Create the users table in the database and insert a record that store admin's credentials
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users', function($table) {
			$table->engine = 'InnoDB';
			
		    $table->increments('id');
		    $table->string('username', 64);
		    $table->string('password', 64);
		    $table->string('name', 128);
		    $table->integer('role')->default(5);    
		    $table->timestamps();
		});
		
		DB::table('users')->insert(array(
		    'username'  => 'isa',
		    'password'  => Hash::make('close'),
		    'name'  => 'Admin',
		    'role'  => '1'
		));
	}

	/**
	 * Revert the changes to the database.
	 * In this case we just drop the table
	 * @return void
	 */
	public function down()
	{
			Schema::drop('users');
	}

}