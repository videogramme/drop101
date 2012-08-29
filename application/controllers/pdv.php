<?php

class Pdv_Controller extends Base_Controller {

	/*
	|--------------------------------------------------------------------------
	| The Default Controller
	|--------------------------------------------------------------------------
	|
	| Instead of using RESTful routes and anonymous functions, you might wish
	| to use controllers to organize your application API. You'll love them.
	|
	| This controller responds to URIs beginning with "home", and it also
	| serves as the default controller for the application, meaning it
	| handles requests to the root of the application.
	|
	| You can respond to GET requests to "/home/profile" like so:
	|
	|		public function action_profile()
	|		{
	|			return "This is your profile!";
	|		}
	|
	| Any extra segments are passed to the method as parameters:
	|
	|		public function action_profile($id)
	|		{
	|			return "This is the profile for user {$id}.";
	|		}
	|
	*/
	public $restful = true; 

	public function get_index()
	{
		return View::make('frontend.pdv');
	}

	public function post_email(){
		
		$new_email = array(
        'from'    => Input::get('from'),
        'subject'    => Input::get('subject'),
        'body'    => Input::get('body'),
    	);
    	// $from   => Input::get('from'),
     //    $subject   => Input::get('subject'),
     //    $body    => Input::get('body'),

   		$rules = array(
        'from'     => 'required|email',
        'suject'      => 'required|min:5|max:50',
        'body'    => 'required|min:10'
    	);
    
	    $validation = Validator::make($new_email, $rules);
	    if ( $validation -> fails() )
	    {
	    	  return Redirect::to('pdv')
                // ->with('user', Auth::user())
                ->with_errors($validation)
                ->with_input();
    	}


		$message = Message::to(array('xavierborsu@gmail.com', 'videogramme@gmail.com' => 'videoioio'))
    	// ->cc('more@addresses.com')
    	// ->bcc(array('evenmore@address.com' => 'Another name', 'onelast@address.com'))
    	->from($new_email['from'])
    	->subject($new_email['subject'])
    	->body('<b>Well hello</b> <i>Someone</i>, how is it going?')
    	->html(true);
    	// ->send();

		if($message->was_sent())
		{
		    echo 'Sweet it worked!';
		}
	}

}