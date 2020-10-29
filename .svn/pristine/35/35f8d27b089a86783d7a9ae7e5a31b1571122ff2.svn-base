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
		url(${pageContext.request.contextPath}/resources/images/halloffame.jpg)
		no-repeat center center;
	background-size: cover;
}

.img {
	width: 300px;
	height: 300px;
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
											<h1>RECORDS</h1>
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
					<div class="head_title text-center">
						<h2>Hall of Fame</h2>
						<div class="subtitle">최고의 팀에 지원하세요</div>
						<div class="separator"></div>
					</div>
					<!-- End off Head_title -->
					<div class="main_history">
						<div class="col-sm-6">
							<div class="single_history_img">
								<img class="img"
									src="${pageContext.request.contextPath}/uploads/${odd.tmAtachName}"
									alt="" />
							</div>
						</div>

						<div class="col-sm-6">
							<div class="single_history_content">
								<div class="head_title">
									<h2>최고승률</h2>
								</div>
								<h4>팀명: ${odd.tmNm}</h4>
								<h4>승률: ${odd.recordOdd}</h4>

								<a
									href="<%=request.getContextPath() %>/team/teamView.sc?tmId=${odd.tmId}"
									class="btn btn-lg"><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>&nbsp;&nbsp;팀 상세정보</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of row -->
		</section>
		<hr>
		<section id="history" class="history sections">
			<div class="container">
				<div class="row">
					<div class="main_history">
						<div class="col-sm-6">
							<div class="single_history_img">
								<img class="img"
									src="${pageContext.request.contextPath}/uploads/${win.tmAtachName}"
									alt="" />
							</div>
						</div>

						<div class="col-sm-6">
							<div class="single_history_content">
								<div class="head_title">
									<h2>최다승</h2>
								</div>
								<h4>팀명: ${win.tmNm}</h4>
								<h4>승수: ${win.recordWin}승</h4>

								<a
									href="<%=request.getContextPath() %>/team/teamView.sc?tmId=${win.tmId}"
									class="btn btn-lg"><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>&nbsp;&nbsp;팀 상세정보</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of row -->
		</section>
		<hr>
		<section id="history" class="history sections">
			<div class="container">
				<div class="row">
					<div class="main_history">
						<div class="col-sm-6">
							<div class="single_history_img">
								<img class="img"
									src="${pageContext.request.contextPath}/uploads/${played.tmAtachName}"
									alt="" />
							</div>
						</div>

						<div class="col-sm-6">
							<div class="single_history_content">
								<div class="head_title">
									<h2>최다경기</h2>
								</div>
								<h4>팀명: ${played.tmNm}</h4>
								<h4>경기수: ${played.recordPlayed}</h4>

								<a
									href="<%=request.getContextPath() %>/team/teamView.sc?tmId=${played.tmId}"
									class="btn btn-lg"><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>&nbsp;&nbsp;팀 상세정보</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of row -->
			</div>
			<!--End of container -->
		</section>
		<!--End of history -->
		</section>
		<!-- 여기에 작성해주세요 -->


		<%@ include file="/WEB-INF/inc/footer.jsp"%>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
</body>
</html>
