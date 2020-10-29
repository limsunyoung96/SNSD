<%@page import="kr.co.soccer.common.util.CookieUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>Social Network Soccer Dreaming</title>
<style>
	*{
		margin:0;
		padding:0;
	}
	html, body{
	 	background-color: #f5f6f7;
	}
	#main_menu{
		background-color: rgba(34, 61, 97, 0.64);
	}
	h2{
		font-weight: bold;
	}
	.loginHome{
		width: 450px;
		height: 400px;
		margin: 70px auto;
	}
	.logoImg{
		max-width: 77%;
		margin-left: 46px;
	}
	table{
		margin: 35px 0;
	}
	#btn_place{
		margin-top:47px
	}
</style>
</head>
<body>
	<%
		CookieUtils cookieUtils = new CookieUtils(request);
	String msg = request.getParameter("msg");
	String name = "";
	String checked = "";

	if (cookieUtils.getValue("SAVE_ID") != null) {
		name = cookieUtils.getValue("SAVE_ID");
		checked = "checked='checked'";
	}
	%>
	<div id="bodyColor">
		<div class="loginHome">
			<form action="login.sc" method="post" class="loginForm">
				<a href="/"><img class="logoImg" alt="SNSD" src="${pageContext.request.contextPath}/resources/images/LOGO/LeagueLOGO.png"></a> 
				<table class="table">
					<tbody>
						<tr>
							<th>아이디</th>
							<td><input type="text" name="userId"
								class="form-control input-sm" value="<%=name%>">
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="userPass"
								class="form-control input-sm">
							${message}
								</td>
						</tr>
						<tr>
							<td colspan="2"><label><input type="checkbox"
									name="rememberMe" value="Y" <%=checked%>> ID 기억하기</label></td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="submit" class="btn btn-lg btn-block" id="btn_place">로그인</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<!--End of row -->		
	</div>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
</body>
</html>