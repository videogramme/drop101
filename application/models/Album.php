<?php

// application/model/album.php
// Le model pour les albums du shop. 
// Les albums appartiennent à un user et cette relation est identifiée par album_author dans les table Albums

class Album extends Eloquent {

	public function users()
	{
		return $this->belongs_to('User');
	}
	public function pictures()
	{
		return $this->belongs_to('Picture');
	}
	public function news()
	{
		return $this->belongs_to('Blogs');
	}
	public function events()
	{
		return $this->belongs_to('Events');
	}
	public function tags()
	{
		return $this->has_many_and_belongs_to('Tag', 'albums_tags');
	}
	public function labels()
	{
	return $this->has_many_and_belongs_to('Label', 'album_label');
	}
	public function artists()
	{
		return $this->has_many_and_belongs_to('Artist', 'album_artist');
	}
	
}
