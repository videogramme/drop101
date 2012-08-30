@layout('templates.main')
@section('content')
		
    @foreach ($albums -> results as $album)
        <div class="span8">
            <h1>{{ HTML::link('album/'.$album->id, $album->name );}}</h1>
            <hr />
            <?php
            //var_dump($album->artist);
            ?>
            <p>{{ $album->artist }}</p>

        
		<!-- 	@if ( !Auth::guest() )
              	{{ Form::open('album/'.$album->id, 'DELETE')}}
	        	<p>{{ Form::submit('Delete', array('class' => 'btn-small')) }}</p>
	    		{{ Form::close() }}
    		@endif  -->

            @if ( Auth::guest() )
                {{ Form::open('cart/buy?id='.$album->id, 'buy')}}
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

<!--         <div class="row">
            <div class="span8">
                {{ $albums -> links(); }}
             </div>
        </div>  -->   

@endsection
