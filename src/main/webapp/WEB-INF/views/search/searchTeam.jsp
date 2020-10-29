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
											<h3>Find</h3>
											<h1>New Board</h1>
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
			<div class="row">
				<div class="main_pricing_area sections">
					<div class="head_title text-center">
						<h2>Find my Team</h2>
						<div class="subtitle">나와 맞는 맞는 팀을 찾아보세요!</div>
						<div class="separator"></div>
					</div>
					<!-- End off Head_title -->

					<div class="col-sm-12">
						<div class="single_contant_left padding-bottom-90">
							<form action="searchTeam.sc" id="formid" method="post">
								<div
									class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">
									<div class="row">
										<div class="col-sm-12">
											<div style="vertical-align: middle; text-align-last: center;"
												class="form-group">
												<input type="text" class="form-control" name="schtTitle"
													placeholder="제목" required="">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<select name="schtPosition"
													class="form-control form-control-sm my-3"
													style="vertical-align: middle; text-align-last: center;">
													<option value="">-- 포지션 --</option>
													<c:forEach items="${positionList}" var="code">
														<option value="${code.commCode}">${code.commName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>


									<div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<select name="schtAge"
													class="form-control form-control-sm my-3"
													style="vertical-align: middle; text-align-last: center;">
													<option value="">-- 연령대 --</option>
													<c:forEach items="${ageList}" var="code">
														<option value="${code.commCode}">${code.commName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="col-sm-12">
											<div class="form-group">
												<select name="schtRegion"
													class="form-control form-control-sm my-3"
													style="vertical-align: middle; text-align-last: center;">
													<option value="">-- 지역 --</option>
													<c:forEach items="${regionList}" var="code">
														<option value="${code.commCode}">${code.commName}</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>


									<div class="form-group">
										<select name="schtTime"
											class="form-control form-control-sm my-3"
											style="vertical-align: middle; text-align-last: center;">
											<option value="">-- 시간대 --</option>
											<c:forEach items="${timeList}" var="code">
												<option value="${code.commCode}">${code.commName}</option>
											</c:forEach>
										</select>
									</div>

									<div class="form-group">
										<textarea
											style="vertical-align: middle; text-align-last: center;"
											class="form-control" name="schtContent" rows="3"
											placeholder="Message"></textarea>
									</div>
									<div class="">
										<input type="submit" value="지원하기" class="btn btn-lg">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/inc/footer.jsp"%>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
</body>
</html>
