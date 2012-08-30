<?php

class Blog_Controller extends Base_Controller {


    public $restful = true;

	public function get_index(){
		return View::make('frontend.blog')
        ->with('blogs', Blog::order_by('updated_at', 'desc')
        ->get());
	}
    public function get_view($id){
        return View::make('frontend.blogarticle')
        ->with('blog', Blog::find($id));
    }
    public function get_new(){
        return View::make('dashboard.blog_new');
        // ->with('blog', Blog::find($id));
    }
    // public function post_create(){
    //     Blog::create(array(
    //         'title' =>Input::get('title'),
    //         'description' => Input::get('description')

    //     ));
    //     return Redirect::to_route('dashboard')->with('message', 'La news a été créer !');
    // }

    // public function action_delete($id) {
    //     $blog = Blog::where_id($id)->first();
    //     $blog->delete();
    //     return View::make("deleted");
    // }

    // public function action_new() {
    //     return View::make("add");
    // }

    // public function action_add() {
    //     $blog = new Blog();
    //     $blog->title = Input::get("title");
    //     $blog->description = Input::get("description");
    //     $blog->save();
    //     return View::make("success");
    // }

}