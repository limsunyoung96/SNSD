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
	/* 원하는 메인이미지를 resources안에 images폴더에 넣은 후 이미지 변경해주세요 */
	#main_menu{
		background-color: rgba(34, 61, 97, 0.64);
	}
	html, body{
	 	background-color: #f5f6f7;
	}
	#history{
		width: 50%;
		height: 600px;
		}
   	#history2{
		width: 50%;
   		margin-top: 135px;
   	}
	h2{
		font-weight: bold;
	}
	.sections {
		width: 700px;
   		padding-top: 0px;
   		float:left;
   	}
   	.logoImg{
   		width:700px;
   		margin-left: 135px;
   		margin-top: 135px;
   	}
   	
</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
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
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<div class="culmn">
		<section id="history" class="history sections">
			<a href="/"><img class="logoImg" alt="SNSD" src="${pageContext.request.contextPath}/resources/images/LOGO/LeagueSNSD.png"></a>
		</section>
		<section id="history2" class="history sections">
			<div class="container">
				<div class="row">
					<div class="main_history">
						<div class="col-sm-6">
							<h2>회원가입</h2>
		<form:form action="memberRegist.sc" modelAttribute="mem">
			<table class="table ">
				<tbody>
					<tr>
						<th>아이디</th>
						<td>
							<form:input path="memId" cssClass="form-control input-sm" pattern="\w{4,12}" title="알파벳과 숫자 4글자 이상 12글자 이하로 입력해주세요" />
							<form:errors path="memId"/>
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<form:password path="memPass" cssClass="form-control input-sm" pattern="[\w!-/]{4,12}" title="알파벳과 숫자, 특수문자 4글자 이상 12글자 이하로 입력해주세요" />
							<form:errors path="memPass"/>
						</td>
					</tr>
					<tr>
						<th>회원명</th>
						<td>
							<form:input path="memName" cssClass="form-control input-sm" pattern="[가-힣]{2,}" title="한글로된 두글자 이상의 이름을 입력해주세요"/>
							<form:errors path="memName"/>
						</td>
					</tr>
					<tr>
						<th>핸드폰번호</th>
						<td>
							<form:input path="memPhone" cssClass="form-control input-sm"/>
						</td>
					</tr>
					<tr>
						<th>생일</th>
						<td>
						<input type="date" name="memBirth"
							class="form-control input-sm">
							</td>
					</tr>					
					<tr>
						<th>지역</th>
						<td>
							 <select name="memRegion" class="form-control" required="required">
								<option value="">-- 주로 공차는 지역을 선택해주세요 --</option>
								<c:forEach items="${memRegionList}" var="code">
									<option value="${code.commCode }">${code.commName}</option>
								</c:forEach>
							</select>
							<form:errors path="memRegion"/>
						</td>
					</tr>
					<tr>
						<th>메일</th>
						<td>
							<form:input path="memEmail" cssClass="form-control input-sm"/>
							<form:errors path="memEmail"/>
						</td>
					</tr>
					<tr>
						<th>각오 한마디</th>
						<td>
							<textarea rows="3" name="memRemark" class="form-control"></textarea>
						</td>
					</tr>
					
					<tr>
						<td colspan="2"><button type="submit" class="btn btn-lg">
								<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true">&nbsp;회원가입
							</button> </td>
					</tr>
				</tbody>
			</table>
		</form:form>
						</div>
					</div>
					<!--End of row -->
				</div>
				<!--End of container -->
		</section>
		<!--End of history -->
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
</body>
</html>