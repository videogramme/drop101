@layout('templates.dashboard')
@section('content')
<div class="span8">
    <h2>Ajouter un news</h2>
    <hr />  

    {{ Form::open('blog', 'POST') }}
    
        <!-- Champ nom -->
        <p>{{ Form::label('title', 'Titre de la news') }}</p>
        {{ $errors->first('title', Alert::error(":message")) }}
        <p>{{ Form::text('title', Input::old('title')) }}</p>
        <!-- Champ artiste -->
        <p>{{ Form::label('description', 'Description') }}</p>
        {{ $errors->first('description', Alert::error(":message")) }}
        <p>{{ Form::textarea('description', Input::old('description')) }}</p>
        <!-- submit button -->
        <p>{{ Form::submit('Créer') }}</p>

    {{ Form::close() }}

</div>
@endsection