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
		<button type="button" class="btn_image" id="img_btn"
			onclick="history.back()">
			<img src="images/back2.png" width="80" height="80" />
		</button>
	</div>
	<div style="text-align: center">
		<img src="images/Logo2.png" alt="My Logo" width="194.4" height="49.6" />
	</div>
	<div class="login-box">
		<form action="signup" method="post" onsubmit="return checkAll()">
			<div class="user-box">
				<input type="text" placeholder="ID" name="insid" id="id" required />
				<div id="checkId"></div>
			</div>
			<div class="user-box">
				<input type="password" placeholder="PW" name="passwd" id="pw"
					onchange="check_pw()" required />
			</div>
			<div class="user-box">
				<input type="password" placeholder="Re-Password" name="repw"
					id="repw" onchange="check_pw()" required /><span
					id="check"></span>
			</div>
			<button type="submit" id="btu" class="login">회원가입</button>
		</form>
	</div>

	<script type="text/javascript">
	    document.getElementById("id").addEventListener("blur", function() {
			let getId = document.getElementById("id")
			
			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				document.getElementById("checkId").innerHTML = '사용가능한  Id 입니다.';
			}
			xhttp.open("POST", "checkId", true);
			xhttp.setRequestHeader("Content-type",
					"application/x-www-form-urlencoded;charset=UTF-8");
			xhttp.send("insid=" + getId.value);
		});

</script>


	<script>
        function check_pw(){
 
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 
            if(pw.length < 6 || pw.length>16){
                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('pw').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
                document.getElementById('pw').value='';
            }
            if(document.getElementById('pw').value !='' && document.getElementById('repw').value!=''){
                if(document.getElementById('pw').value==document.getElementById('repw').value){
                    document.getElementById('check').innerHTML='<br>비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='<br>비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
        
        
        function checkAll() {               
        					if (!checkPassword(passwd.value,repw.value)) {
        			           		   return false;
        					}
        					return true;    
        			}
        
      /* function checkExistData(value, dataName) {
    	          if (value == "") {
    		              alert(dataName + " 입력해주세요!");
    		              return false;
    		      }
    	          return true;    
    	 	 } */
      
     /*  function checkUserId(id) {
    	          if (!checkExistData(id, "아이디를"))
    	              return false;
    	           var idRegExp = /^[a-zA-z0-9]{4,12}$/;
    	          if (!idRegExp.test(id)) {
    		              alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
    		              form.id.value = "";            
    		  			  form.id.focus();
    		              return false;
    		          }
    	          return true;
    	      } */
      
      function checkPassword(passwd, repw) {
    	                 /* if (!checkExistData(passwd, "비밀번호를"))
    	              		return false;
    	                 if (!checkExistData(repw, "비밀번호 확인을"))            
    	  					return false;   */       
    	  					
    	  				/* var password1RegExp = /^[a-zA-z0-9]{4,12}$/; 
    	  				
    	  				if (!password1RegExp.test(password1)) {            
    	  					alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
    	  				    form.password1.value = "";
    	  				    form.password1.focus();
    	  				    return false;
    	  					} */        
    	  				
    	  				if (passwd != repw) { 
    	  		           alert("두 비밀번호가 맞지 않습니다.");
    	  				   form.passwd.value = "";
    	  				   form.repw.value = "";
    	  				   form.repw.focus();
    	  				   return false;
    	  				  }
      		}
    	
    	 
        
        
    </script>






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

