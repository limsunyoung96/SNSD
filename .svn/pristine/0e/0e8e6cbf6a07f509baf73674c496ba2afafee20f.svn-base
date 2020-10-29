<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
#homeIMG {
	/* 원하는 메인이미지를 resources안에 images폴더에 넣은 후 이미지 변경해주세요 */
	background:
		url(${pageContext.request.contextPath}/resources/images/searchTeamBack.jpg)
		no-repeat center center;
	background-size: cover;
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
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<!-- 멘트만 바꿔주세용</p> -->
											<h3>TEMPLATE</h3>
											<h1>BOARD</h1>
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

		<!-- 기본템플릿 History // 다른 템플릿 불러오려면 이 곳을 지우셔야 합니당 -->
		<!-- History section -->
		<section id="history" class="history sections">
			<div class="container">
				<div class="row">
					<div class="container">
						<div class="page-header">
							<h3>
								<small>팀구하기 - 상세보기</small>
							</h3>
						</div>
						<table class="table table-hover">
							<tbody>
								<tr>
									<th>글번호</th>
									<td>${team.schtNo}</td>
								</tr>
								<tr>
									<th>글제목</th>
									<td>${team.schtTitle}</td>
								</tr>

								<tr>
									<th>작성자명</th>
									<td>${team.schtName}</td>
								</tr>
								<tr>
									<th>포지션</th>
									<td>${team.schtPositionNm}</td>
								</tr>
								<tr>
									<th>연령대</th>
									<td>${team.schtAgeNm}</td>
								</tr>
								<tr>
									<th>지역</th>
									<td>${team.schtRegionNm}</td>
								</tr>
								<tr>
									<th>시간대</th>
									<td>${team.schtTimeNm}</td>
								</tr>
								<!-- 비밀번호는 보여주지 않음  -->
								<tr>
									<th>내용</th>
									<td><pre>${team.schtContent}</pre></td>
								</tr>

								<tr>
									<th>조회수</th>
									<td>${team.schtHit}</td>
								</tr>
								<tr>
									<th>등록일자</th>
									<td>${team.schtRegDate}</td>
								</tr>

							</tbody>
						</table>

					</div>
					<div class="col-xs-6 col-sm-1 text-right">
					<a href="searchTeamEdit.sc?schtNo=${team.schtNo}" class="btn btn-lg"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>&nbsp;&nbsp;수정</a>
					</div>
				</div>
			</div>
	</div>
	</div>
	<!--End of row -->
	</div>
	<!--End of container -->
	</section>
	<!--End of history -->
	<!-- 여기에 작성해주세요 -->
	<%@ include file="/WEB-INF/inc/footer.jsp"%>
	<%@ include file="/WEB-INF/inc/footer2.jsp"%>
</body>
</html>
