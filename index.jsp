<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>

	$(document).ready(function(){
		
		$("#btn_login").click(function(){

			if($("#userid").val() =='') {
				alert("아이디를 입력하세요");
				return false;
			}
			if($("#password").val() =='') {
				alert("패스워드를 입력하세요");
				return false;
			}
			$("#loginForm").attr("action","loginCheck.jsp").submit();
		});
		
	});

</script>

<meta charset="utf-8">
<title>로그인</title>

<style>
body { font-family: "나눔고딕", "맑은고딕" }
h1 { font-family: "HY견고딕" }
a:link { color: black; }
a:visited { color: black; }
a:hover { color: blue; }
a:active { color: red; }
#hypertext { text-decoration-line: none; cursor: hand; }
#topBanner {
       margin-top:10px;
       margin-bottom:10px;
       max-width: 500px;
       height: auto;
       display: block; margin: 0 auto;
}
   
.login {
  width:900px;
  height:auto;
  padding: 20px, 20px;
  background-color:#FFFFFF;
  text-align:center;
  border:5px solid gray;
  border-radius: 30px;
}   
.userid, .username, .userpasswd {
  width: 80%;
  border: none;
  border-bottom: 2px solid #adadad;
  outline:none;
  color: #636e72;
  font-size:16px;
  height:25px;
  background: none;
  margin-top: 20px;
}
.bottomText {
  text-align: center;
  font-size: 20px;
}
.login_btn  {
  position:relative;
  left:40%;
  transform: translateX(-50%);
  margin-bottom: 40px;
  width:80%;
  height:40px;
  background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
  background-position: left;
  background-size: 200%;
  color:white;
  font-weight: bold;
  border:none;
  cursor:pointer;
  transition: 0.4s;
  display:inline;
}

</style>
</head>
<body>
<br><br><br>
<div class="main" align="center">
	<div class="login">
		<h1>로그인</h1>
		<form name="loginForm" id="loginForm" class="loginForm" method="post"> 

			<input type="text" name="userid" id="userid" class="userid" placeholder="아이디를 입력하세요.">
         	<input type="password" id="password" name="password" class="userpasswd" onkeydown="press(this.form)" placeholder="비밀번호를 입력하세요.">
         	<br><br>
     		<input type="button" id="btn_login" class="login_btn" value="로그인" onclick="loginCheck()"> 
		</form>
        <div class="bottomText">사용자가 아니면 ▶<a href="signup.jsp">여기</a>를 눌러 등록을 해주세요.<br><br>
     	      [<a href="#">아이디</a> | 
     	       <a href="#">패스워드</a>  찾기]  <br><br>    
    	  </div>
	</div>
 
</div>

</body>
</html>