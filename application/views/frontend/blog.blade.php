@layout('templates.main')
@section('content')
    <div class="span8">
    <h1>News</h1>
    <hr />
    @foreach($blogs as $blog)
        <div class="span8">
            {{-- HTML::link_to_route('blog', $blog->title, $blog->id) --}}
            {{ HTML::link('blog/'.$blog->id, $blog->title );}}
            <br />
            {{ $blog->created_at }}
            <hr />
        </div>
    @endforeach

    </div>

@endsection