@layout('templates.main')
@section('content')

<?php
$albumArray = Session::get('shoppingcart');
$albums = $albumArray->getAlbums();
echo (sizeof($albums));
?>

<h1>shopping cart</h1>

<table class="table">

	<tr>
        <th>name</th>
        <th>artist</th>
        <th>quantity</th>
        <th>price</th>
    </tr>

	@foreach ($albums as $album)
        <tr>
	        <td>{{ $album->name }}</td>
	        <td>{{ $album->artist }}</td>
	        <td>1</td>        
	        <td>{{ $album->price }}</td>
		</tr>
    @endforeach

	<tr>
		<td></td>
        <td></td>
        <td></td>
        <td>Total</td>
	</tr>
	<tr>
		<td></td>
        <td></td>
        <td></td>
        <td></td>
	</tr>
	<tr>
		<td></td>
        <td></td>
        <td></td>
        <td><button class="btn-large btn" type="submit">Buy</button></td>
	</tr>
</table>
@endsection