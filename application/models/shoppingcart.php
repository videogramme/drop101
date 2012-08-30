<?php

class Shoppingcart{

	private $albums = array();

	public function addAlbum($album){
		$this->albums[] = $album;
	}
	public function getAlbums(){
		return $this->albums;
	}

}


?>