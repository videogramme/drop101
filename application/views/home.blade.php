@layout('templates.main')
@section('content')
		
    @foreach ($albums -> results as $album)
        <div class="span8">
            <h1>{{ $album->name }}</h1>
            <p>{{ $album->artist }}</p>
            <p>{{ $album->year }}</p>
            <p>{{ $album->label }}</p>
            <p>{{ $album->description }}</p>
            <p>{{ $album->tracklist }}</p>
            <p>{{ $album->price }} &euro;</p>
            <p>{{ $album->quantity }}</p>
        
		<!-- 	@if ( !Auth::guest() )
              	{{ Form::open('album/'.$album->id, 'DELETE')}}
	        	<p>{{ Form::submit('Delete', array('class' => 'btn-small')) }}</p>
	    		{{ Form::close() }}
    		@endif -->

            @if ( Auth::guest() )
                {{ Form::open('album/'.$album->id, 'Acheter')}}
                <p>{{ Form::submit('Acheter', array('class' => 'btn-small')) }}</p>
                {{ Form::close() }}
            @endif 

    		<hr />
		</div>
        
    @endforeach
    
@endsection

@section('pagination')
    	<div class="row">
    		<div class="span8">
	    		{{ $albums -> links(); }}
	   		 </div>
		</div>
@endsection

@section('shoppingcart')

        <div class="row">
            <div class="span8">
                {{ $albums -> links(); }}
             </div>
        </div>    

@endsection
