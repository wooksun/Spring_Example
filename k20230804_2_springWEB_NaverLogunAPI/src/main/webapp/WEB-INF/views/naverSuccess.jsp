<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<style type="text/css">

	html, div, body, h3 {
		margin: 0;
		padding: 0;
	}
	
	h3 {
		display: inline-block;
		padding: 0.6em;
	}

</style>

<script type="text/javascript">
	$(() => {
		let name = ${result}.response.name;
		let email = ${result}.response.email;
		$('#name').html('환영합니다.' + name + '님');
		$('#email').html(email);
	});
</script>
</head>
<body>

<div style="background-color: #15a191; width: 100%; height: 50px; text-align: center; color: white;">
	<h3>로그인 성공</h3>
</div><br/>

<h2 id="name" style="text-align: center;"></h2>
<h3 id="email" style="text-align: center;"></h3>
세션 값: ${sessionId}<br/>

<h3>
	<a href="logout">로그아웃</a>
</h3>

</body>
</html>