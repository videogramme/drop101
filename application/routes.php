<?php


// Route::get('album/(:num)', array('before' => 'auth', 'do' => function($id){
    
//     return View::make('album')
//         ->with('albums', $albums);
            
// })) ;





// La page index est une liste des albums
Route::get('/', function() {
    $albums = Album::with('users')->order_by('updated_at', 'desc')->paginate(5);
    return View::make('home')
        ->with('albums', $albums);
});
Route::get('album/(:any)', function() {
    $albums = Album::with('users')->order_by('updated_at', 'desc')->paginate(5);
    return View::make('frontend.albumsingle')
        ->with('albums', $albums);
});


// Avoir le login
Route::get('login', function() {
    return View::make('login');
});

// Process the login form
Route::post('login', function() {

    $userinfo = array(
        'username' => Input::get('username'),
        'password' => Input::get('password'),
        'remember' => !empty($remember) ? $remember : null
    );
    if ( Auth::attempt($userinfo) )
    {
        return Redirect::to('dashboard');
    }
    else
    {
        return Redirect::to('login')
            ->with('login_errors', true);
    }
});

// Process Logout process
Route::get('logout', function() {
    Auth::logout();
    return Redirect::to('/');
});



// La route vers le panneau d'admin
Route::get('dashboard', array('before' => 'auth', 'do' => function() {
    $albums = Album::with('users')->order_by('updated_at', 'desc')->paginate(15);
    return View::make('dashboard')
        ->with('albums', $albums);
}));
// La route vers la page de création d'un nouvelle album
Route::get('dashboard/new', array('before' => 'auth', 'do' => function() {
    $user = Auth::user();
    return View::make('dashboard.new')->with('user', $user);
}));
// Sav dans db l'album
Route::post('dashboard/new', array('before' => 'auth', 'do' => function() {

    $new_album = array(
        'name'    => Input::get('name'),
        'artist'    => Input::get('artist'),
        'label'    => Input::get('label'),
        'year'    => Input::get('year'),
        'description'     => Input::get('description'),
        'tracklist'   => Input::get('tracklist'),
        'price'    => Input::get('price'),
        'quantity'     => Input::get('quantity'),
        'albumtags'     => Input::get('albumtags'),
        'user_id'   => Input::get('user_id'),
        'picture' => File::get('picture'),
    );

    $rules = array(
        'name'     => 'required|min:0|max:255',
        'artist'      => 'required',
        'label'      => 'required',
        'year'      => 'required|min:4',
        'description'      => 'required|min:10',
        'price'      => 'required|min:1',
        'quantity'      => 'required',
        'albumtags'     => 'required|min:1',
        'picture' => 'required|image|max:35000',
    );
    
    $validation = Validator::make($new_album, $rules);
    if ( $validation -> fails() )
    {
        return Redirect::to('admin')
                ->with('user', Auth::user())
                ->with_errors($validation)
                ->with_input();
    }

    $pictureExtension = File::extension($input['picture']['name']);

    $pictureDirectory = 'public/uploads/pictures/'.sha1(Auth::user()->id);
    $thumbFeatDirectory = 'public/uploads/thumbs/'.sha1(Auth::user()->id);
    $thumbCatDirectory = 'public/uploads/thumbs/'.sha1(Auth::user()->id);

    $pictureFilename = sha1(Auth::user()->id.time()).".{$pictureExtension}";

    $image = Input::file('pictureUpload');

        $pic_upload_success = Resizer::open($image)
                ->resize(466 , 351 , 'auto')
                ->save( $pictureDirectory.'/'.$pictureFilename , 90);

        // $thumbFeat = Input::file('pictureUpload');

        $thumbFeat_upload_success = Resizer::open($image)
                ->resize(466 , 345 , 'crop')
                ->save( $thumbFeatDirectory.'/'.$pictureFilename , 90);

        // $thumbCat = Input::file('pictureUpload');

        $thumbCat_upload_success = Resizer::open($image)
                ->resize(260 , 200 , 'crop')
                ->save( $thumbCatDirectory.'/'.$pictureFilename , 90);

    // setting up array with picture info
            $picture = new Picture(array(
                'addon_id' => $album->id,
                'location' => '_uploads/pictures/'.sha1(Auth::user()->id).'/'.$pictureFilename,
                'thumbfeat' => '_uploads/thumbsFeat/'.sha1(Auth::user()->id).'/'.$pictureFilename,
                'thumbcat' => '_uploads/thumbsCat/'.sha1(Auth::user()->id).'/'.$pictureFilename,
             ));
            $album->pictures()->save($picture);

    // On le sauv quand il a passé la validation
    $album = new Album($new_album);
    $album->save();

    
    // redirect vers la main du dashboard
    return Redirect::to('/dashboard');
}));





Route::delete('album/(:num)', array('before' => 'auth', 'do' => function($id){
    $delete_album = Album::with('user')->find($id);
    $delete_album -> delete();
    return Redirect::to('dashboard')
            ->with('success_message', true);
})) ;

//
//??????????
// enlever un album
Route::put('album/(:num)', array('before' => 'auth', 'do' => function($id){
    
    $put_album = Album::with('id')
        ->where('id', '=', $id)
        ->update(array('quantity' => -1 ));
    return Redirect::to('dashboard');


    // $put_album = Album::with('albums')->find($id);
    // var_dump($put_album);
    // $put_album -> delete();
    // return Redirect::to('dashboard')
    //         ->with('success_message', true);
})) ;




//fait chier celui du haut emeche le controleur
// Route::get('pdv', function() {
//     return View::make('frontend.pdv');
// });





// conditions géénérale de vente 
Route::get('conditions', function() {
    return View::make('frontend.conditions');
});





//
//
//
Route::get('dashboard/uploader', array('before' => 'auth', 'do' => function() {
    $user = Auth::user();
    return View::make('dashboard.uploader')->with('user', $user);
}));
//
Route::any('dashboard/upload', function()
{

    $upload_handler = IoC::resolve('uploadhandler');

    header('Pragma: no-cache');
    header('Cache-Control: no-store, no-cache, must-revalidate');
    header('Content-Disposition: inline; filename="files.json"');
    header('X-Content-Type-Options: nosniff');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: OPTIONS, HEAD, GET, POST, PUT, DELETE');
    header('Access-Control-Allow-Headers: X-File-Name, X-File-Type, X-File-Size');

    switch ($_SERVER['REQUEST_METHOD']) 
    {
        case 'OPTIONS':
            break;
        case 'HEAD':
        case 'GET':
            $upload_handler->get();
            break;
        case 'POST':
            if (isset($_REQUEST['_method']) && $_REQUEST['_method'] === 'DELETE') {
                $upload_handler->delete();
            } else {
                $upload_handler->post();
            }
            break;
        case 'DELETE':
            $upload_handler->delete();
            break;
        default:
            header('HTTP/1.1 405 Method Not Allowed');
    }
});




// Route pour la page admin/new
/*Route::get('admin/new-album', array('before' => 'auth', 'do' => function() {
	$user = Auth::user();
    return View::make('new-album')->with('user', $user);
}));
*/
/* grouping routes 
Route::group(array('before' => 'auth'), function()
{
    Route::get('panel', function()
    {
        //
    });

    Route::get('dashboard', function()
    {
        //
    });
});
*/





//blog
Route::get('blog', array('as'=>'blog', 'uses'=>'blog@index'));
Route::get('blog/(:any)', array('as'=>'blog', 'uses'=>'blog@view'));

// Route::get('dashboard/blog/new', array('as'=>'new_blog', 'uses'=>'blog@new'));
// Route::post('dashboard/blog/new/post', array('uses'=>'blog@create'));






// La route vers la page de création d'un nouvelle album
Route::get('dashboard/blog/new', array('before' => 'auth', 'do' => function() {
    $user = Auth::user();
    return View::make('dashboard.blog.new')->with('user', $user);
}));


Route::post('dashboard/blog/new', array('before' => 'auth', 'do' => function() {

    $new_blog = array(
        'title'    => Input::get('title'),
        'description'  => Input::get('description'),
        'user_id'   => Input::get('user_id')
    );

    $rules = array(
        'title'     => 'required|min:5|max:100',
        'description'      => 'required|min:10'
    );
    
    $validation = Validator::make($new_blog, $rules);
    if ( $validation -> fails() )
    {
        
        return Redirect::to('dashboard/blog/new')
                ->with('user', Auth::user())
                ->with_errors($validation)
                ->with_input();
    }


    // On le sauv quand il a passé la validation
    $blog = new Blog($new_blog);
    $blog->save();

    
    // redirect to viewing all albums
    return Redirect::to('dashboard');
}));


Route::controller(Controller::detect());

/*
|--------------------------------------------------------------------------
| Application 404 & 500 Error Handlers
|--------------------------------------------------------------------------
|
| To centralize and simplify 404 handling, Laravel uses an awesome event
| system to retrieve the response. Feel free to modify this function to
| your tastes and the needs of your application.
|
| Similarly, we use an event to handle the display of 500 level errors
| within the application. These errors are fired when there is an
| uncaught exception thrown in the application.
|
*/

Event::listen('404', function()
{
	return Response::error('404');
});

Event::listen('500', function()
{
	return Response::error('500');
});

/*
|--------------------------------------------------------------------------
| Route Filters
|--------------------------------------------------------------------------
|
| Filters provide a convenient method for attaching functionality to your
| routes. The built-in before and after filters are called before and
| after every request to your application, and you may even create
| other filters that can be attached to individual routes.
|
| Let's walk through an example...
|
| First, define a filter:
|
|		Route::filter('filter', function()
|		{
|			return 'Filtered!';
|		});
|
| Next, attach the filter to a route:
|
|		Router::register('GET /', array('before' => 'filter', function()
|		{
|			return 'Hello World!';
|		}));
|
*/

Route::filter('before', function()
{
	// Do stuff before every request to your application...
});

Route::filter('after', function($response)
{
	// Do stuff after every request to your application...
});

Route::filter('csrf', function()
{
	if (Request::forged()) return Response::error('500');
});

Route::filter('auth', function()
{
	if (Auth::guest()) return Redirect::to('login');
});