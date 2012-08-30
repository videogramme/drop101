<?php

class Albumlabel extends Eloquent{
	
	// public static $table = 'albumtag';

	public function albums(){
		return $this->has_many('Album');
	}
	public function labels(){
		return $this->has_many('Label');
	}


}