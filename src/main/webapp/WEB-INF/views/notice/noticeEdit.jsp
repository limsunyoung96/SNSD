<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<html lang="ko">
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<style>
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
<%@include file="/WEB-INF/inc/header.jsp"%>
<title>공지사항 - 글 수정</title>
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
											<h3>공지사항 수정</h3>
											<h1>공지사항 수정</h1>
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
				<h3>
					공지사항 - <small>글 수정</small>
				</h3>
			</div>
			<form:form action="noticeModify.sc" modelAttribute="notice">
				<form:hidden path="boNo" />
				<%-- <input type="hidden" name="boNo" value="${notice.boNo}"> --%>
				<table class="table table-striped table-bordered">
					<colgroup>
						<col width="20%" />
						<col />
					</colgroup>
					<tr>
						<th>글번호</th>
						<td>${notice.boNo}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>
							<%-- <input type="text" name="boTitle" value="${notice.boTitle}" class="form-control input-sm" > --%>
							<form:input path="boTitle" cssClass="form-control input-sm" /> <form:errors
								path="boTitle" />
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							<%-- <input type="text" name="boWriter" value="${notice.boWriter}"  class="form-control input-sm" > --%>
							<form:input path="boWriter" cssClass="form-control input-sm" />
							<form:errors path="boWriter" />
						</td>
					</tr>


					<tr>
						<th>내용</th>
						<td><textarea rows="10" name="boContent"
								class="form-control input-sm">${notice.boContent}</textarea></td>
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
						<td colspan="2">
							<div class="pull-left">
								<a href="noticeList.sc" class="btn btn-default btn-sm"> <span
									class="glyphicon glyphicon-list" aria-hidden="true"></span>
									&nbsp;&nbsp;목록
								</a>
							</div>
							<div class="pull-right">
								<!-- 문제점 : 사용자가 입력박스에서 엔터를 치면 첫번째 submit의 formaction 방향으로 이동한다.  -->
								<button type="submit" formaction="noticeDelete.sc"
									class="btn btn-sm btn-danger">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
									&nbsp;&nbsp;삭제
								</button>
								<button type="submit" class="btn btn-sm btn-primary">
									<span class="glyphicon glyphicon-save" aria-hidden="true"></span>
									&nbsp;&nbsp;저장
								</button>
							</div>
						</td>
					</tr>
				</table>
			</form:form>
		</div>
		<!-- container -->
</body>
</html>