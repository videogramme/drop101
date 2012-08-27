@layout('templates.main')
@section('content')
    
    <table class="table">
        <tr>
            <td>album id</td>
            <td>album name</td>
            <td>album artist</td>
            <td>album price</td>
            <td>album quantity</td>
        </tr>
        
        @foreach ($albums -> results as $album)
        <tr>
            <td>{{ $album->id}}</td>
            <td>{{ $album->name}}</td>
            <td>{{ $album->artist}}</td>
            <td>{{ $album->price}}</td>
            <td>{{ $album->quantity}}</td>
        </tr>
        @endforeach

    </table>
@endsection