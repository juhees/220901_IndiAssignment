<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div>
		<form name="joinForm" action="joinProc.jsp" method="post">
			ID:<input type="text" name="id" size="20" /> <br />
			PW:<input type="password" name="pw" size="20" /> <br />
			Nickname:<input type="text" name="nick" size="10" /> <br />
			Email:<input type="email" name="email" size="20" /> <br />
			
			<button onclick="this.form.submit()">가입하기</button>
		</form>
	</div>

</body>
</html>