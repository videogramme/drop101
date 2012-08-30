<?php

// application/blog
// Le model pour les news du shop. 
// Les news appartiennent à un user et cette relation est identifiée par album_author dans les table Albums

class Blog extends Eloquent {

	public static $table = "blogs";
	
	public function users(){
		return $this->belongs_to('User');
	 }
	// public function pictures()
	// {
	// 	return $this->belongs_to('Picture');
	// }

}
