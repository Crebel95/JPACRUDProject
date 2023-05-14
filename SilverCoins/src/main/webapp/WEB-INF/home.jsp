<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>American Silver Coins</title>
</head>
<body>

<h1>Home Page</h1>

	<div class="container">

		<div class="items">
				<a href="coinById.html"><button class="button one">Find coin by ID</button> </a>
				 <br /> 
				 <a href="addNewCoin.html"><button class="button two">Add a new coin</button></a>
				 <br /> 
				 <a href="deleteCoin.html"><button class="button three">Delete a coin</button></a>
				 <br /> 
				 
			
				
				
				<c:forEach var="silverCoin" items="${silverCoinList}">
					<tr>
						<td>${silverCoin.id }</td>
						<td><div class="grow"><a href="coinById.do?id=${silverCoin.id}"> ${silverCoin.type} </a></div></td>
					</tr>
				</c:forEach>
			
			</div>
					
					
				
</div>
</body>
</html>