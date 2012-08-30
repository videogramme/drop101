@layout('templates.main')
@section('content')

<div class="span12">
    <div class="span7">

        <script type="text/javascript"src="http://www.google.com/jsapi?key=AIzaSyDZcl2Asvu2FFaG2px-yMOCGmTKNQrf3SA">
        <script type="text/javascript"charset="utf-8">google.load("maps","2.x"); google.load("jquery","1.3.1");</script>

        <!-- <div id="map"></div> -->
        <style media="screen"type="text/css">#map { width:300px; height:100px; }</style>    

    </div>

    <div class="span4 offset8">
    <h2>Envoyer un email</h2>
    <hr />
    

    {{ Form::open('pdv/email') }}

        <!-- Champ nom -->
        <p>{{ Form::label('from', 'Veillez introduire votre email') }}</p>
        {{ $errors->first('email', Alert::error(":message")) }}
        <p>{{ Form::text('from', Input::old('from')) }}</p>
        <!-- Champ artiste -->
        <p>{{ Form::label('Sujet', 'Sujet') }}</p>
        {{ $errors->first('subject', Alert::error(":message")) }}
        <p>{{ Form::text('subject', Input::old('subject')) }}</p>
        <!-- Champ label -->
        <p>{{ Form::label('body', 'Votre message') }}</p>
        {{ $errors->first('body', Alert::error(":message")) }}
        <p>{{ Form::textarea('body', Input::old('body')) }}</p>

        <!-- submit button -->
        <p>{{ Form::submit('Envoyez') }}</p>
    {{ Form::close() }}
    </div>

</div>
<script type="text/javascript">
    $(document).ready(function(){ 
      var map = new GMap2(document.getElementById(‘map’)); 
      var burnsvilleMN = new GLatLng(44.797916,-93.278046); 
      map.setCenter(burnsvilleMN, 8); 
    });
</script>
@endsection