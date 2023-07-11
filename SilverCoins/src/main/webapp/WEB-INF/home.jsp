<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>American Silver Coins</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
	<div class="head">
		<jsp:include page="navbar.jsp" />
	</div>
	<div id="bannerContainer"></div>

<div id="priceTracker">
<iframe src="https://goldbroker.com/widget/live-price/XAG?currency=USD" width="100%" height="130" style="border: 0; overflow: hidden;"></iframe>
</div>
	<div class="video">
		<iframe width="560" height="315"
			src="https://www.youtube.com/embed/urEYrqiiXVE"
			title="YouTube video player" frameborder="0"
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
			allowfullscreen></iframe>
	</div>

	<div class="divScroll">
		<c:forEach var="silverCoin" items="${silverCoinList}">
			<tr>
				
				<td><div class="obj">
					<img id="coinPic" alt="Coin" src="${silverCoin.pictureUrl}">	<a href="coinById.do?id=${silverCoin.id}"> ${silverCoin.type}
						</a>
					</div></td>
			</tr>

		</c:forEach>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>