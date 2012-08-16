@layout('templates.main')
@section('content')
<div class="span8">
    <h2>Ajouter un Album</h2>
    <hr />
    {{ Form::open('admin') }}
    	{{ Form::hidden('user_id', $user->id) }}
        <!-- Champ nom -->
        <p>{{ Form::label('name', 'Titre de l\'album') }}</p>
        {{ $errors->first('name', Alert::error(":message")) }}
        <p>{{ Form::text('name', Input::old('name')) }}</p>
        <!-- Champ nom -->
        <p>{{ Form::label('artist', 'Artist') }}</p>
        {{ $errors->first('artist', Alert::error(":message")) }}
        <p>{{ Form::text('artist', Input::old('artist')) }}</p>
        <!-- Champ nom -->
        <p>{{ Form::label('label', 'Label de l\'album') }}</p>
        {{ $errors->first('label', Alert::error(":message")) }}
        <p>{{ Form::text('label', Input::old('label')) }}</p>
        <!-- Champ nom -->
        <p>{{ Form::label('year', 'Année de l\'album') }}</p>
        {{ $errors->first('year', Alert::error(":message")) }}
        <p>{{ Form::text('year', Input::old('year')) }}</p>
        <!-- Champ description -->
        <p>{{ Form::label('description', 'Description de l\'album') }}</p>
        {{ $errors->first('description', Alert::error(":message")) }}
        <div>{{ Form::textarea('description', Input::old('description')) }}</div>
        <!-- Champ chanson -->
        <p>{{ Form::label('tracklist', 'Nom des chansons') }}</p>
        {{ $errors->first('tracklist', Alert::error(":message")) }}
        <p>{{ Form::textarea('tracklist', Input::old('tracklist')) }}</p>
        <!-- Champ Prix -->
        <p>{{ Form::label('price', 'Prix de l\'album') }}</p>
        {{ $errors->first('price', Alert::error(":message")) }}
        <p>{{ Form::textarea('price', Input::old('price')) }}</p>
        <!-- Champ quantitées -->
        <p>{{ Form::label('quantity', 'Quantitée de l\'album') }}</p>
        {{ $errors->first('quantity', Alert::error(":message")) }}
        <p>{{ Form::textarea('quantity', Input::old('quantity')) }}</p>
        <!-- Champ quantitées -->
        <p>{{ Form::label('album_tags', 'Tags de l\'album') }}</p>
        {{ $errors->first('album_tags', Alert::error(":message")) }}
        <p>{{ Form::textarea('album_tags', Input::old('album_tags')) }}</p>

        <!-- submit button -->
        <p>{{ Form::submit('Create') }}</p>
    {{ Form::close() }}
</div>
@endsection