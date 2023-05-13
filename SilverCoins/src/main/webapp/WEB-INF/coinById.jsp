<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coin by Id</title>
</head>
<body>

	<div class="container">


		<ul>
			<li><div class="grow">Coin ID: ${silverCoin.id}</div></li>
			<li><div class="grow">Type: ${silverCoin.type}</div></li>
			<li><div class="grow">Mint: ${silverCoin.mint}</div></li>
			<li><div class="grow">Year: ${silverCoin.date}</div></li>
			<li><div class="grow">Value: ${silverCoin.value}</div></li>
			<li><div class="grow">Silver content (grams):
					${silverCoin.silverContent}</div></li>
			<li><div class="grow">Weight (grams): ${silverCoin.weight}</div></li>
		</ul>


	</div>
	<div>
		<a href="home.do" class="btn btn-secondary" role="button">Home</a>
	</div>

</body>
</html>