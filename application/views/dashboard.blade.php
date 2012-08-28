@layout('templates.dashboard')
@section('content')
    
    <table class="table">
        <tr>
            <th></th>
            <th>id</th>
            <th>name</th>
            <th>artist</th>
            <th>price</th>
            <th>quantity</th>
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
@endsection