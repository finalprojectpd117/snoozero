<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
if (request.getProtocol().equals("HTTP/1.1"))
	response.setHeader("Cache-Control", "no-cache");
%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/login.css" />
<title>Document</title>
</head>
<body style="background-color: white">
	<div>
		<div>
			<button type="button" class="btn_image" id="img_btn"
				onclick="history.back()">
				<img src="images/back2.png" width="80" height="80" />
			</button>
		</div>
		<div>
			<img src="images/Logo2.png" alt="My Logo" width="194.4" height="49.6" />
		</div>
		<div class="login-box">
			<form action="login" method="post">
				<div class="user-box">
					<input type="text" placeholder="ID" name="insid" required />
				</div>
				<div class="user-box">
					<input type="password" placeholder="PW" name="passwd" required />
				</div>
				<button type="submit" id="btu" class="login">로그인</button>
			</form>
			<div class="link" onclick="location.href='signup.jsp';">회원가입</div>
		</div>
	</div>


	<c:if test="${not empty message}">
		<script type="text/javascript">
			
			 let msg = "<c:out value='${message}'/>";
			 
			 ( () => {
				 if (msg != "") {
				 	alert(msg);
				 }
			 })();
		</script>
	</c:if>

</body>
</html>