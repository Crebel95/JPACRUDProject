<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>American Silver Coins</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp"/>

<h1>Home Page</h1>

	<div class="container">

		<div class="items">
	
				 <br /> 
				 
			
				
				
				<c:forEach var="silverCoin" items="${silverCoinList}">
					<tr>
						<td>${silverCoin.id }</td>
						<td><div class="grow"><a href="coinById.do?id=${silverCoin.id}"> ${silverCoin.type} </a></div></td>
					</tr>
				</c:forEach>
			
			</div>
					
					
				
</div>
<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>