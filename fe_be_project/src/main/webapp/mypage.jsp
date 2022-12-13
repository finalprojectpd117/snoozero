<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%    
response.setHeader("Cache-Control","no-store");    
response.setHeader("Pragma","no-cache");    
response.setDateHeader("Expires",0);    
if (request.getProtocol().equals("HTTP/1.1"))  
        response.setHeader("Cache-Control", "no-cache");  
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<table border="1" width="900">
	<tr>
		<td>아이디: ${sessionScope.user.insid}</td> 
	</tr>
	<tr>
		<td><a href="accidentlist.jsp">사고기록</a></td> 
	</tr>
	<tr>
		<td><a href="main.jsp">메인  메뉴</a></td> 
	</tr>
	<tr>
		<td><a href="login.jsp" onclick="logOut()">로그아웃</a></td> 
	</tr>
</table>



	<script>
	function logOut() {
		const xhttp = new XMLHttpRequest();
		
		xhttp.open("GET", "logout", true);
		xhttp.setRequestHeader("Content-type",
				"application/x-www-form-urlencoded;charset=UTF-8");
		xhttp.send();
		alert("로그아웃 완료.");
	}
	</script>




</body>
</html>