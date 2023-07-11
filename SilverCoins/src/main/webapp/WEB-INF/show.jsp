<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Silver Coin Details</title>
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>

<div class="container">
	<c:choose>
		<c:when test="${not empty silverCoin}">
			<h1>Silver Coin Details</h1>
			<img id="coinPicView" alt="Coin" src="${silverCoin.pictureUrl}">
			<div>
				<h4>${silverCoin.type}(${silverCoin.date})</h4>
				<h5>${silverCoin.mint } mint</h5>
				<h5>Value ${silverCoin.value}</h5>
			</div>
		</c:when>
		
		<c:otherwise>
			<h3>No coins found</h3>
		</c:otherwise>
	</c:choose>
</div>

</body>
</html>