<?php

class Picture extends Eloquent{
	// public static $timestamps = true;
	// public static $table = 'pictures';

	public function albums(){
		return $this->belongs_to('Album');
	}
}

?>