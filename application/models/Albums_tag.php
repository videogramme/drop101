<?php

class Albums_tag extends Eloquent{
	
	public static $table = 'addon_tag';

	public function albums(){
		return $this->has_many('Album');
	}
	public function tags(){
		return $this->has_many('Tag');
	}


}