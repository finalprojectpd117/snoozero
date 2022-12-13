<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1" width="900">
<tr>
	<th width="150">날짜</th>
	<th width="150">부속1</th>
	<th width="150">부속2</th>
	<th width="150">부속3</th>
	<th width="150">부속4</th>
	<th width="150">부속총합</th>
</tr>
 
<c:forEach var="acc" items="${accList}"> <!-- 받아온 boardList 값을 "acc"에 넣고 반복 출력 -->
	<tr>
		<td>${acc.acc_date}</td> <
		<td>${acc.repair_price1}</td>
		<td>${acc.repair_price2}</td>
		<td>${acc.repair_price3}</td>
		<td>${acc.repair_price4}</td>					
		<td>${acc.repair_sum}</td> 	
	</tr>
</c:forEach>

</table>
<br>
<a href="main.jsp">메인  메뉴</a>


</body>
</html>