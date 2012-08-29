@layout('templates.main')
@section('content')

<div class="span8">
    <h2>Envoyer un email</h2>
    <hr />

<?php
echo Form::text('username');
?>
    {{ Form::open('pdv/email') }}

        <!-- Champ nom -->
        <p>{{ Form::label('from', 'Veillez introduire votre email') }}</p>
        {{ $errors->first('from', Alert::error(":message")) }}
        <p>{{ Form::text('from', Input::old('from')) }}</p>
        <!-- Champ artiste -->
        <p>{{ Form::label('Sujet', 'Sujet') }}</p>
        {{ $errors->first('subject', Alert::error(":message")) }}
        <p>{{ Form::text('subject', Input::old('subject')) }}</p>
        <!-- Champ label -->
        <p>{{ Form::label('body', 'Votre message') }}</p>
        {{ $errors->first('body', Alert::error(":message")) }}
        <p>{{ Form::text('body', Input::old('body')) }}</p>

        <!-- submit button -->
        <p>{{ Form::submit('Envoyez') }}</p>
    {{ Form::close() }}

</div>



@endsection