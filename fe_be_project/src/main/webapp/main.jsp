<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/main.css" />
<title>Document</title>
</head>
<body>
	<div>
		<!-- 메인 페이지-->
		<div class="text">
			<div class="first">
				캠 밖으로 나가거나 가려지는 경우,
			</div>
			<div class="second">
			인식이 <strong>불가능</strong>합니다.
			</div>
		</div>

		<div class="logo">
			<img src="images/Logo.png" alt="My Logo" width="194.4" height="49.6" />
		</div>

		<div class="video">
			<strong>&#124;</strong> Video
		</div>

		<div class="youtube">
			<iframe class="one" width="450" height="205"
				src="https://www.youtube.com/embed/QL3CWmQr0-Q?autoplay=0"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<iframe class="two" width="450" height="205"
				src="https://www.youtube.com/embed/iKxVffo4GSI?autoplay=0
        title="
				YouTube video player"
        frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<iframe class="three" width="450" height="205"
				src="https://www.youtube.com/embed/7Q2N7919o5o"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>
	</div>

	<!-- 메뉴 버튼 -->
	<div>
		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<div>
				<div class="profile1">
					<img src="images/profile.png" alt="woman" width="150" height="150" />
				</div>

				<div class="profile2">운전자</div>
				<div class="profile3"> ${sessionScope.user.insid} 님</div>

				<div class="driver">
					<button class="btn" onclick="location.href='http://127.0.0.1:8000/';">
						운전자 주행</button>
				</div>
				<div class="logout">
					<a href="login.jsp" style="font-size: 13px;" onclick="logOut()">로그아웃</a>
				</div>
			</div>


		</div>
		<div id="main">
			<button style="font-size: 30px; cursor: pointer" type="button"
				class="menu_image" id="img_menu" onclick="openNav()">
				<img src="images/menu.png" width="45" height="45" />
			</button>
		</div>
	</div>

	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "380px";
			document.getElementById("main").style.marginLeft = "380px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
			document.getElementById("main").style.marginLeft = "0";
		}

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