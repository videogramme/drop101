@layout('templates.main')
@section('content')
    <div class="span8">
    <h1>News</h1>
    <hr />
        <div class="span8">
            {{ $blog->title }}
            <br />
            {{ $blog->created_at }}
            <br />
            {{ $blog->user_id }}
            <hr />
            {{ $blog->description }}
        </div>

    </div>

@endsection