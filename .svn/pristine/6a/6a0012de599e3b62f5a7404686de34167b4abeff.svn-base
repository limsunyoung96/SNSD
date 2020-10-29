<%@page import="kr.co.soccer.member.IMemberService"%>
<%@page import="kr.co.soccer.member.IMemberDao"%>
<%@page import="kr.co.soccer.login.UserVO"%>
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
		url(${pageContext.request.contextPath}/resources/images/soccerPng.png)
		no-repeat right bottom;
	background-size: 40%;
}

h3 {
	color: #d6d6d6;
}

#section1, #section2, #section3, #section4 {
	width: 45%;
	height: 500px;
	margin: 10px;
	padding: 20px;
	overflow: auto;
	float: left;
	-ms-overflow-style: none;
}

#section1::-webkit-scrollbar, #section2::-webkit-scrollbar, #section3::-webkit-scrollbar,
	#section4::-webkit-scrollbar {
	display: none;
}

#box {
	width: 757px;
	height: 150px;
	padding: 50px 0px;
	margin: 50px auto;
}

.btn {
	margin: 0 50px;
}

#clean {
	clear: both;
}

.btnResult {
	width: 50px;
	height: 5px;
	background: #fff;
	color: #000;
	border-bottom: 13px solid #d6ffcc;
	padding-bottom: 10px;
	display: inline-block;
}

th, td {
	text-align: center;
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
											<h3>MYPAGE</h3>
											<h1>관리자 마이페이지</h1>
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

		<div id="box">
			<a href="#" class="btn btn-lg" onclick="newLeaguePop()">리그생성</a> <a
				href="/league/leagueList.sc" class="btn btn-lg">리그목록</a> <a
				href="/league/leagueForm.sc" class="btn btn-lg">건의함</a>
		</div>

		<!-- service Section -->
		<div id="section1">
			<h3>회원관리</h3>
			<table class="table">
				<colgroup>
					<col style="width: 30%" />
					<col style="width: 30%" />
					<col style="width: 40%" />
				</colgroup>
				<tr>
					<th>ID</th>
					<th>이 름</th>
					<th>속한 팀</th>
				</tr>
				<c:forEach var="mem" items="${members}">
					<tr>
						<td class="myModal"><a href="#"
							onclick="openModal('${mem.memId}');" data-toggle="modal"
							data-target="#modalMember">${mem.memId}</a></td>
						<td>${mem.memName}</td>
						<td>${mem.memTeamName}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="modalMember" class="modal fade" role="dialog" tabindex="-1"
			aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="section1Label"></h4>
					</div>
					<div class="modal-body">
						<form id="formmember" action="/member/memberDelete.sc"
							method="post">
							<div class="form-group">
								<label for="mem-id" class="control-label">ID</label> <input
									type="text" class="form-control" id="mem-id" name="memId">
							</div>
							<div class="form-group">
								<label for="mem-phone" class="control-label">연락처</label> <input
									type="text" class="form-control" id="mem-phone">
							</div>
							<div class="form-group">
								<label for="mem-team" class="control-label">속한 팀</label> <input
									type="text" class="form-control" id="mem-team">
							</div>
							<div class="form-group">
								<label for="mem-region" class="control-label">지역</label> <input
									type="text" class="form-control" id="mem-region">
							</div>
							<div class="form-group">
								<label for="mem-email" class="control-label">이메일</label> <input
									type="text" class="form-control" id="mem-email">
							</div>
							<div class="form-group">
								<label for="mem-remark" class="control-label">각오</label>
								<textarea class="form-control" id="mem-remark"></textarea>
							</div>
					</div>
					<div class="modal-footer">
						<!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
						<a href="#" onclick="f_post()" class="btn btn-primary"> 삭제 </a>
						<!-- <button type="submit" class="btn btn-primary" >삭제</button> -->
					</div>
					</form>
				</div>
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->

		<!-- section1 -->
		<div id="section2">
			<h3>팀관리</h3>
			<table class="table">
				<colgroup>
					<col style="width: 30%" />
					<col style="width: 30%" />
					<col style="width: 40%" />
				</colgroup>
				<tr>
					<th>팀 ID</th>
					<th>팀 이름</th>
					<th>팀 조장</th>
				</tr>
				<c:forEach var="team" items="${teams}">
					<tr>
						<td class="myModal"><a href="#" onclick="openModal(this);"
							data-toggle="modal" data-target="#modalMember">${team.tmId}</a></td>
						<td>${team.tmName}</td>
						<td>${team.memId}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- section2 -->
		<div id="section3">
			<h3>리그신청목록</h3>
			<table class="table">
				<colgroup>
					<col style="width: 25%" />
					<col style="width: 20%" />
					<col style="width: 30%" />
					<col style="width: 10%" />
					<col style="width: 15%" />
				</colgroup>
				<tr>
					<th>신청날짜</th>
					<th>리그 이름</th>
					<th>팀 ID</th>
					<th>팀 이름</th>
					<th>승인여부</th>
					<th>승인</th>
				</tr>
				<form id="formApply">
					<c:forEach var="app" items="${applys}">
						<tr>
							<td>${app.regDate}</td>
							<td>${app.lgName}</td>
							<td>${app.tmId}</td>
							<td>${app.tmName}</td>
							<td class="res">${app.result}</td>
							<input type="hidden" value="${app.boNo}" name="boNo">
							<td><a class="btnResult"
								onclick="applyPost('${app.boNo}',this)">Check</a></td>
							<%-- <td><button onclick="applyPost('${app.boNo}')" class="btnResult">Check</button></td> --%>
						</tr>
					</c:forEach>
				</form>
			</table>
		</div>
		<!-- section3 -->
		<div id="section4">
			<h3>리그목록</h3>
			<table class="table">
				<tr>
					<th>리그코드</th>
					<th>이름</th>
					<th>시작날짜</th>
					<th>종료날짜</th>
					<th>개최지역</th>
				</tr>
				<c:forEach var="league" items="${leagues}">
					<tr>
						<td>${league.lgCode}</td>
							<td><a href="/league/leagueView.sc?lgCode=${league.lgCode}">${league.lgName} <small> - 일정 확정하러 가기 </small></a></td>
							<td>${league.startDate}</td>
							<td>${league.endDate}</td>
							<td>${league.lgRegion }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div id="clean"></div>
		<!-- section4 -->

		<%@ include file="/WEB-INF/inc/footer.jsp"%>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
		<script>
			function openModal(id) {
				$.get("/member/memberView.ajax", {
					memId : id
				}, function(data) {
					$("#section1Label").html(data.memName + "님의 상세정보");
					$("#mem-id").val(data.memId);
					$("#mem-phone").val(data.memPhone);
					$("#mem-team").val(data.memTeamName);
					$("#mem-region").val(data.memRegion);
					$("#mem-email").val(data.memEmail);
					$("#mem-remark").val(data.memRemark);
				});
			}

			function f_post() {
				memId = document.getElementById("mem-id").value;
				console.log(memId);
				var f = document.forms['formmember']; //폼 name
				f.memId.value = memId; //POST방식으로 넘기고 싶은 값
				f.action = "/member/memberDelete.sc";//이동할 페이지
				f.method = "post"; //POST방식
				f.submit();
			}

			function applyPost(no, obj) {
				$.get("/apply/applyModify.sc", {
					boNo : no
				}, function(data) {
					$(obj).parents('tr').find('.res').html('Y');
				});
			}

			function newLeaguePop() {
				window.name = "managerMypage";
				window.open("/league/leagueForm.sc", "newLeague",
						"width=600 , height=800 , left=600 , top=30");
			}
		</script>
</body>

</html>
