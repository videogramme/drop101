<?php

// application/model/album.php
// Le model pour les albums du shop. 
// Les albums appartiennent à un user et cette relation est identifiée par album_author dans les table Albums

class Event extends Eloquent {

	public function users()
	{
		return $this->belongs_to('User');
	}
	public function pictures()
	{
		return $this->belongs_to('Picture');
	}
}
