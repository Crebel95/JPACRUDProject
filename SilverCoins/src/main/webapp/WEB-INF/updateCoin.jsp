<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Coin</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
<jsp:include page="navbar.jsp"/>

<c:choose> 
	<c:when test="${! empty silverCoin}"> 

	<form class="container" action="updateResult.do" method="GET">
		<fieldset class="items add">
			<label id="one"> Type: </label>  
				<input type="text" name="type" value="${silverCoin.type}" required/>		
		    <label id="two"> Mint: </label> 
		        <input type="text" name="mint" value="${silverCoin.mint}"/> 
		    <label id="three">Year: </label> 
			   <input type="number" name="date" value="${silverCoin.date}" required/>
		    <label id="four">Value: </label> 
			   <input type="number" name="value" value="${silverCoin.value}" required/>
		    <label id="five">Silver content (grams): </label> 
			   <input type="number" name="silverContent" value="${silverCoin.silverContent}" required/>
		    <label id="six">Weight (grams): </label> 
			   <input type="number" name="weight" value="${silverCoin.weight}" required/>
		</fieldset>
	
		
		<input type="submit" value ="submit" name="id" >
	<!-- <input type="hidden" name="id" /> -->
	</form>
	</c:when> 
	 <c:otherwise>
			
		</c:otherwise> 
	</c:choose> 
<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>