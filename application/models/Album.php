<?php

// application/model/album.php
// Le model pour les albums du shop. 
// Les albums appartiennent à un user et cette relation est identifiée par album_author dans les table Albums

class Album extends Eloquent {

	public function user()
	{
		return $this->belongs_to('User','user_id');
	}

}
