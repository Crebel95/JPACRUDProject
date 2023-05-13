<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Silver Coin Details</title>
</head>
<body>

<div class="container">
	<c:choose>
		<c:when test="${not empty sc}">
			<h1>Silver Coin Details</h1>
			<div>
				<h4>${sc.type}(${sc.date})</h4>
				<h5>${sc.mint } mint</h5>
				<h5>Value ${sc.value}</h5>
			</div>
		</c:when>
		
		<c:otherwise>
			<h3>No coins found</h3>
		</c:otherwise>
	</c:choose>
</div>

</body>
</html>