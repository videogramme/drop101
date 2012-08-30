@layout('templates.main')
@section('content')

<?php
$total = 0;
$albumArray = Session::get('Shoppingcart');

$albums = $albumArray->getAlbums();
echo (sizeof($albums));
?>

<h1>Panier d'achat</h1>

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
	        <td>{{ $album->price }} €</td>
		</tr>
    @endforeach
    <tr>
		<td></td>
        <td></td>
        <td></td>
        <td></td>
	</tr>
	<tr>
		<td></td>
        <td>Total : </td>
        <td>@foreach ($albums as $album)
        		<?php
        		$total += $album->price;
        		?>
        	@endforeach
        	{{ $total }} €
        </td>
        <td></td>
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
        <td><button class="btn-large btn" type="submit">Acheter</button></td>
        <td></td>
	</tr>
</table>
<table >
	<tr>
		<td></td>
        <td></td>
        <td></td>
        <td><button class="btn-large btn" type="submit">Effacer</button></td>
	</tr>
</table>



@endsection