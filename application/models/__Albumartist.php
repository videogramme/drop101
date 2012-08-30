<?php

class Albumartist extends Eloquent{
	
	// public static $table = 'albumtag';

	public function albums(){
		return $this->has_many('Album');
	}
	public function artists(){
		return $this->has_many('Artist');
	}


}