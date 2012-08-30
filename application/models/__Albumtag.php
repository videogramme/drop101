<?php

class Albumtag extends Eloquent{
	
	// public static $table = 'albumtag';

	public function albums(){
		return $this->has_many('Album');
	}
	public function tags(){
		return $this->has_many('Tag');
	}


}