@layout('templates.dashboard')
@section('content')
    
@if (Session::has('success_message'))
        <div class="span8">
        {{ Alert::success("Success! Album deleted!") }}
        </div>
@endif

    <table class="table">
        <tr>
            <th></th>
            <th>id</th>
            <th>name</th>
            <th>artist</th>
            <th>price</th>
            <th>quantity</th>
            <th></th>
        </tr>
        
        @foreach ($albums -> results as $album)
        <tr>
            <td><input type="checkbox"/></td>
            <td>{{ $album->id}}</td>
            <td>{{ $album->name}}</td>
            <td>{{ $album->artist}}</td>
            <td>{{ $album->price}}</td>
            <td>{{ $album->quantity}}</td>
            <td>
                {{ Form::open('album/'.$album->id, 'DELETE')}}
                <p>{{ Form::submit('Delete', array('class' => 'btn-small')) }}</p>
                {{ Form::close() }}
            </td>    
        </tr>
        @endforeach

    </table>

    {{ Form::open('album/'.$album->id, 'PUT')}}
        <p>{{ Form::submit('Enlever', array('class' => 'btn-small')) }}</p>
    {{ Form::close() }} 


@endsection

@section('pagination')
        <div class="row">
            <div class="span8">
                {{ $albums -> links(); }}
             </div>
        </div>
@endsection