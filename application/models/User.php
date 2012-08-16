<?php
// application/models/user.php
// The model for Users. 
// A user has many posts.

class User extends Eloquent {

	public function albums()
	{
		return $this->has_many('Album');
	}

}
