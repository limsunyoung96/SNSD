<%@page import="kr.co.soccer.login.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<html lang="ko">
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>noticeView.jsp</title>
<style>
.logoImg{
	width: 15%;
}

#homeIMG {
	/* 원하는 메인이미지를 resources안에 images폴더에 넣은 후 이미지 변경해주세요 */
	background:
		url(${pageContext.request.contextPath}/resources/images/notice.jpeg)
		no-repeat center center;
	background-size: cover;
}

.col-sm-offset-9 {
	margin-left: 67%;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<div class="culmn">
		<%@ include file="/WEB-INF/inc/top.jsp"%>
		<!--home Section -->
		<section id="homeIMG" class="home">
			<div class="overlay">
				<div class="home_skew_border">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 ">
								<div class="main_home_slider text-center">
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="500ms">
											<!-- 멘트만 바꿔주세용</p> -->
											<h3>"꼭 읽어주세요"</h3>
											<h1>공지사항 전달</h1>
											<div class="separator"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="scrooldown">
						<a href="#feature"><i class="fa fa-arrow-down"></i></a>
					</div>
				</div>
			</div>
		</section>
		<!--End of home section -->
		
		
<div class="container">
	 <div class="page-header">
    <h2><img class="logoImg" alt="SNSD" src="${pageContext.request.contextPath}/resources/images/LOGO/LeagueLOGO_main.png"> 공지사항</h2>
  </div>
		<table class="table table-striped table-bordered">
			<tbody>
				<tr>
					<th>글번호</th>
					<td>${notice.boNo}</td>
				</tr>
				<tr>
					<th>글제목</th>
					<td>${notice.boTitle}</td>
				</tr>
				<tr>
					<th>작성자명</th>
					<td>${notice.boWriter}</td>
				</tr>				
				
				<tr>
					<th>내용</th>
					<td><pre>${notice.boContent}</pre>
					</td>
				</tr>
			
				<tr>
					<th>조회수</th>
					<td>${notice.boHit}</td>
				</tr>
				<tr>
					<th>등록일자</th>
					<td>${notice.boRegDate}</td>
				</tr>
				<tr>
					<th>수정일자</th>
					<td>${notice.boModDate}</td>
				</tr>
				
				<tr>
					<td colspan="2">
					  <div class="pull-left">
							<a href="noticeList.sc" class="btn btn-primary"> 
								<span class="glyphicon glyphicon-list" aria-hidden="true"></span>
								&nbsp;&nbsp;목록
							</a>
						</div>
						
					<%
						UserVO user = (UserVO)session.getAttribute("USER_INFO");
			    		if(user != null && user.getUserId().equals("admin")) {
			    	%>
		    		<div class="pull-right">
				      <a href="noticeEdit.sc?boNo=${notice.boNo}" class="btn btn-primary "> 
			            <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
			            &nbsp;수정
						</a>
					</div>
					<%
			    		}
					%> 
						
						</div>
					</td>					  
				</tr>
			</tbody>
		</table>
</div><!-- container -->

		<%@ include file="/WEB-INF/inc/footer.jsp"%>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>

</body>
</html>





