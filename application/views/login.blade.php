@layout('templates.main')
@section('content')
<div class="span4 offset4 well">
    {{ Form::open('login') }}
        <!-- check for login errors flash var -->
        @if (Session::has('login_errors'))
            {{ Alert::error("Username or password incorrect.") }}
        @endif
        <!-- nom d'ulitisateur' -->
        <p>{{ Form::label('username', 'Nom d\'utilisateur') }}</p>
        <p>{{ Form::text('username') }}</p>
        <!-- password  -->
        <p>{{ Form::label('password', 'Mot de passe') }}</p>
        <p>{{ Form::password('password') }}</p>
        <!-- password remeber me-->
        <p>{{ Form::label('remember', 'Se souvenir de moi') }}</p>
        <p>{{ Form::checkbox('remember') }}</p>
        <!-- submit button -->
        <p>{{ Form::submit('Login', array('class' => 'btn-large')) }}</p>
    {{ Form::close() }}
</div>
@endsection