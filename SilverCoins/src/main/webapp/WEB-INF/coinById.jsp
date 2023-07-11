<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coin by Id</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<div class="container">

		<div id="viewCoin">
			<img id="coinPicView" alt="Coin" src="${silverCoin.pictureUrl}">
			<ul>
				<li>Coin ID: ${silverCoin.id}</li>
				<li>Type: ${silverCoin.type}</li>
				<li>Mint: ${silverCoin.mint}</li>
				<li>Year: ${silverCoin.date}</li>
				<li>Value: ${silverCoin.value}</li>
				<li>Silver content (grams):
					${silverCoin.silverContent}</li>
				<li>Weight (grams): ${silverCoin.weight}</li>
			</ul>
		</div>


		<div>
			<form action="updateCoin.do" method="GET">
				<input type="hidden" value="${silverCoin.id}" name="id" /> <input
					type="submit" value="Update info" />
			</form>
			<br>

		</div>

	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>