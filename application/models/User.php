<?php
// application/models/user.php
// The model for Users. 
// A user has many posts.

class User extends Eloquent {

	public function albums()
	{
		return $this->has_many('Album');
	}
	public function blogs()
	{
		return $this->has_many('Blog');
	}
	public function events()
	{
		return $this->has_many('Event');
	}
	// public function albums()
	// {
	// 	return $this->has_many('Album');
	// }


}
