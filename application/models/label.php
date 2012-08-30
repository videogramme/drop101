<?php

class Label extends Eloquent{

	// public static $table = 'tags';

	public function albums(){
		return $this->has_many_and_belongs_to('Album');
	}

}