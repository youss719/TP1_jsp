<%@page	contentType="text/html"	pageEncoding="UTF-8"%>
<!DOCTYPE	html>
<html>
<head>
<meta	http-equiv="Content-Type"	content="text/html;	charset=UTF-8">
<title>JSP	Page</title></head>
<body>
<%	if	(Math.random()	>	.5)	{	%>
<jsp:forward	page="Exercice9.jsp"/>
<%	}else	{	%>
<jsp:forward	page="Exercice8.jsp"/>
<%	}	%>
</body>
</html>