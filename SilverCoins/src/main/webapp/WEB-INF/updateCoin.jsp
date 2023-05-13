<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Coin</title>
</head>
<body>

<c:choose> 
	<c:when test="${! empty update}"> 

	<form class="container" action="updateCoin.do" method="GET">
		<fieldset class="items add">
			<%-- film id:<input type="number" name="id" value="${update.id}"/>  --%>
			<label id="one"> Type: </label>  
				<input type="text" name="type" value="${update.type}" required/>		
		    <label id="two"> Mint: </label> 
		        <input type="text" name="mint" value="${update.mint}"/> 
		    <label id="three">Year: </label> 
			   <input type="number" name="date" value="${update.date}" required/>
		    <label id="four">Value: </label> 
			   <input type="number" name="value" value="${update.value}" required/>
		    <label id="five">Silver content (grams): </label> 
			   <input type="number" name="silverContent" value="${update.silverContent}" required/>
		    <label id="six">Weight (grams): </label> 
			   <input type="number" name="weight" value="${update.weight}" required/>
		</fieldset>
	
		
		<input type="submit" value ="${update.id}" name="id" >
	<!-- <input type="hidden" name="id" /> -->
	</form>
	</c:when> 
	 <c:otherwise>
			<p>No film found</p> 
		</c:otherwise> 
	</c:choose> 

</body>
</html>