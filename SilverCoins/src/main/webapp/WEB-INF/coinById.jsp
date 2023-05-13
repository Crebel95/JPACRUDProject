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
	<c:choose>
		<c:when test="${! empty silverCoin}">
			
				<ul>
				<li><div class="grow">Coin ID: ${silverCoin.id}</div></li>
					<li><div class="grow">Type: ${silverCoin.type}</div></li>
					<li><div class="grow">Mint: ${silverCoin.mint}</div></li>
					<li><div class="grow">Year: ${silverCoin.year}</div></li>
					<li><div class="grow">Value: ${silverCoin.value}</div></li>
					<li><div class="grow">Silver content (grams): ${silverCoin.silverContent}</div></li>
					<li><div class="grow">Weight (grams): ${silverCoin.weight}</div></li>
				</ul>
			



		</c:when>
		<c:otherwise>
			<p>No coins found</p>
		</c:otherwise>
	</c:choose>
</div>
			<form action="deleteCoin.do" method="GET">
				<input type="number" value="Delete coin" name="id" /> <input
					type="hidden" value="${silverCoin.id}" name="deleteCoin" /> <input
					type="submit" value="deleteCoin" name="deleteButton" />
			</form>
			<form action="updateCoin.do" method="GET">		
				  <input type="hidden" value="${silverCoin.id}" name="id" />
				  <input type="submit" value="${silverCoin.id}" />
			</form>
			<a href="home.jsp" class="btn btn-secondary" role="button">Home</a>
</div>	

</body>
</html>