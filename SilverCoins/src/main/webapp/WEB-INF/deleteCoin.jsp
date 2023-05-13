<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Successful</title>
</head>
<body>
<div class="container">

<c:choose>
		<c:when test="${! empty silverCoin}">
			<p> Delete unsuccessful </p>
 <a href="home.do" class="btn btn-secondary" role="button">Back to Home</a>
		</c:when>
		
		<c:otherwise>
			<p>Delete successful</p>
 <a href="home.do" class="btn btn-secondary" role="button">Back to Home</a>
		</c:otherwise>
	</c:choose>
</div>

</body>
</html>