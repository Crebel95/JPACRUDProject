<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" href="index.css" type="text/css">
</head>
<body>
<jsp:include page="navbar.jsp"/>

<img id="coinPicView" alt="Coin" src="${silverCoin.pictureUrl}">
<h1> ${silverCoin.type} </h1>
<h1> ${silverCoin.mint} </h1>
<h1> ${silverCoin.date} </h1>
<h1> ${silverCoin.value} </h1>
<h1> ${silverCoin.silverContent} </h1>
<h1> ${silverCoin.weight} </h1>

<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>