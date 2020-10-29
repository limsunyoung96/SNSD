<%@page import="kr.co.soccer.member.IMemberService"%>
<%@page import="kr.co.soccer.member.IMemberDao"%>
<%@page import="kr.co.soccer.login.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
	<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
	<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
	<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
	<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
    <%@ include file="/WEB-INF/inc/header.jsp" %>
    <title>Social Network Soccer Dreaming</title> 
    <style>
    #homeIMG{
    /* 원하는 메인이미지를 resources안에 images폴더에 넣은 후 이미지 변경해주세요 */
	    background: url(${pageContext.request.contextPath}/resources/images/soccerPng.png) no-repeat right bottom;
	    background-size: 40%;
	}
	#section1{
		width:55%;
		height:auto;
		min-height: 900px;
		background: white;
		text-align: center;
		padding: 70px;
		float:left;
		border-right: 2px solid gray;
	}
	#section2{
		width:45%;
		height:auto;
		float:left;
		padding: 30px 70px 0 70px;
		min-height: 533px;
		background: white;
	}
	.circle {
		width:300px; height:300px; border-radius:200px; margin:0 auto; overflow:hidden;
	}
	 .circle img {
		height:auto; width:200px;
	}
	#teamOdds{
		font-size: 37%;
	    background: pink;
	    border-radius: 35%;
	    padding: 3px;
	}
	.title2{
		font-size: 1.3em;
		font-weight: bold;
	}
	#content1{
		width: auto;
		height: 120px;
	}
	#content2{
		width: auto;
		height: 170px;
	}
	h3{
		color : #d6d6d6;
		margin : 20px 0;
	}
	th,td{
		font-size:1.1em;
	}
	#box{
		width: auto;
		height:100px;
	}
	#section3{
		width:45%;
		height:auto;
		float:left;
		padding: 0px 70px 0 70px;
		min-height: 400px;
		background: white;
	}
	.message{
		width:27%;
		height: 30%;
		padding: 10px;
		margin:10px;
		background:#f6f5fa;
		border-radius: 5px;
		color: #666666;
		text-align:center;
		float:left;
	}
	.msgName{
		font-size: 1.2em;
		font-weight: bold;
		color: #c56f48;
	}
	.msgP{
		border-top : 1px solid #868282;
		text-align:center;
	}
	.msgCount{
		font-size: 1.1em;
		font-weight: bold;		
		color: #c56f48;
	}
	h6{
		line-height: 1.7;
	}
    </style>
    </head>
    <body data-spy="scroll" data-target=".navbar-collapse">

        <div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <div class="culmn">
        <%@ include file="/WEB-INF/inc/top.jsp" %>
            <!--home Section -->
            <section id="homeIMG" class="home" >
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
                                                <h1>${mem.memName}님, 반갑습니다</h1>
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
            </section><!--End of home section -->
            <div id="box"></div>
           <!-- service Section -->
           <div id="section1">
           <c:if test="${not empty team }">
	           	<div class="circle"><img alt="No Image" src="${pageContext.request.contextPath}/uploads/${team.tmAtchName}"></div>
	           	<h2>${team.tmName} <span id="teamOdds"> ${team.sumPlayed}전 ${team.sumWin}승 ${team.sumLose}패 ${team.sumDraw}무 </span></h2>
	           	<h4>${team.memName} (주장)</h4>
	           	<h4>창단일 <span> ${team.tmRegDate}</span></h4>
	           	<div id="content1">
		           	<h5 class="title2">팀원 </h5>
		           	<h5><span>${team.tmMem}</span></h5>         	
	           	</div>
	           	<div id="content2">
	           		<h5 class="title2">command</h5>
	           		<h5>${team.tmContent}</h5>
	           	</div>
	           	<a href="/team/teamEdit.sc?tmId=${team.tmId}" class="btn btn-lg" >수정</a>
           	</c:if>
           	 <c:if test="${empty team }">
           	 	<h2>가입된 팀이 없습니다.</h2>
           	 	<h3>팀을 생성해 주세오.</h3>
           	 	<a href="/team/teamForm.sc" class="btn btn-lg"><span class="glyphicon glyphicon-plus" aria-hidden="true" ></span>&nbsp;&nbsp;팀 생성</a>
           	 </c:if>
           </div>
           <div id="section2">
           	<h3>개인정보</h3>
           <table class="table">
           	<colgroup>
					<col style="width: 40%" />
					<col style="width: 60%" />
				</colgroup>
           		<tr>
           				<th>ID</th>
           				<td>${mem.memId}</td>
           		</tr>
           		<tr>
           				<th>이름</th>
           				<td>${mem.memName}</td>
           		</tr>
           		<tr>
           				<th>연락처</th>
           				<td>${mem.memPhone}</td>
           		</tr>
           		<tr>
           				<th>생일</th>
           				<td>${mem.memBirth }</td>
           		</tr>
           		<tr>
           				<th>주요 활동 지역</th>
           				<td>${mem.memRegion}</td>
           		</tr>
           		<tr>
           				<th>이메일</th>
           				<td>${mem.memEmail}</td>
           		</tr>
           		<tr>
           				<th>각오</th>
           				<td>${mem.memRemark}</td>
           		</tr>
           </table>
           	<a href="/member/memberEdit.sc?memId=${mem.memId}" class="btn btn-lg"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>&nbsp;&nbsp;수정</a>
           </div>
           <div id="section3">
           	<h3>추천시스템</h3>
           	<p><a href="memberMypageSearch.sc">전체보기</a></p>
           	<c:if test="${0 eq sessionScope.USER_INFO.userTeamId}">
           	<c:forEach items="${list}" var="memlist">
           	<div class="message">
           		<span class="msgName"><a href="#" onclick="openModalMember('${memlist.schmNo}');" data-toggle="modal" data-target="#modalSearchMember">${memlist.tmName}</a></span><h6>님에게서 메세지가 도착했습니다.</h6>
           		<p class="msgP">나와 <span class="msgCount">${memlist.searchResult}</span>개의 조건이 일치해요</p>
           	</div>
           	</c:forEach>
           	</c:if>
           	<c:if test="${0 ne sessionScope.USER_INFO.userTeamId}">
           	<c:forEach items="${list}" var="teamlist">
           	<div class="message">
           		<span class="msgName"><a href="#" onclick="openModalTeam('${teamlist.schtNo}');" data-toggle="modal" data-target="#modalSearchTeam">${teamlist.schtName}</a></span><h6>님에게서 메세지가 도착했습니다.</h6>
           		<p class="msgP">나와 <span class="msgCount">${teamlist.searchResult}</span>개의 조건이 일치해요</p>
           	</div>
           	</c:forEach>
           	</c:if>
           </div>
            <div id="modalSearchMember" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
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
							<form id="formmember" action="/member/memberDelete.sc" method="post">
								<div class="form-group">
									<label for="schm-title" class="control-label">글제목</label>
									<input type="text" class="form-control" id="schm-title">
								</div>
								<div class="form-group">
									<label for="schm-name" class="control-label">작성자명</label>
									<input type="text" class="form-control" id="schm-name" >
								</div>
								<div class="form-group">
									<label for="schm-position" class="control-label">포지션</label>
									<input type="text" class="form-control" id="schm-position" >
								</div>
								<div class="form-group">
									<label for="schm-age" class="control-label">연령대</label>
									<input type="text" class="form-control" id="schm-age" >
								</div>
								<div class="form-group">
									<label for="schm-region" class="control-label">지역</label>
									<textarea class="form-control" id="schm-region"></textarea>
								</div>
								<div class="form-group">
									<label for="schm-time" class="control-label">시간대</label>
									<input type="text" class="form-control" id="schm-time" >
								</div>
								<div class="form-group">
									<label for="schm-content" class="control-label">내용</label>
									<input type="text" class="form-control" id="schm-content" >
								</div>
								<div class="form-group">
									<label for="schm-phone" class="control-label">연락처</label>
									<input type="text" class="form-control" id="schm-phone" >
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
			
			<div id="modalSearchTeam" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
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
							<form id="formmember" action="/member/memberDelete.sc" method="post">
								<div class="form-group">
									<label for="scht-title" class="control-label">글제목</label>
									<input type="text" class="form-control" id="scht-title">
								</div>
								<div class="form-group">
									<label for="scht-name" class="control-label">작성자명</label>
									<input type="text" class="form-control" id="scht-name" >
								</div>
								<div class="form-group">
									<label for="scht-position" class="control-label">포지션</label>
									<input type="text" class="form-control" id="scht-position" >
								</div>
								<div class="form-group">
									<label for="scht-age" class="control-label">연령대</label>
									<input type="text" class="form-control" id="scht-age" >
								</div>
								<div class="form-group">
									<label for="scht-region" class="control-label">지역</label>
									<textarea class="form-control" id="scht-region"></textarea>
								</div>
								<div class="form-group">
									<label for="scht-time" class="control-label">시간대</label>
									<input type="text" class="form-control" id="scht-time" >
								</div>
								<div class="form-group">
									<label for="scht-content" class="control-label">내용</label>
									<input type="text" class="form-control" id="scht-content" >
								</div>
								<div class="form-group">
									<label for="scht-phone" class="control-label">연락처</label>
									<input type="text" class="form-control" id="scht-phone" >
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
			
			
		<%@ include file="/WEB-INF/inc/footer.jsp" %>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
       <script>
	      function openModalMember(id) {
	    	  $.get("/searchTeamMem/searchMem.ajax", {schmNo: id}, function (data) {
	    		  $("#section1Label").html(data.schmNo+"번 게시물");
		    	  $("#schm-title").val(data.schmTitle);
		    	  $("#schm-name").val(data.tmName);
		    	  $("#schm-position").val(data.schmPositionNm);
		    	  $("#schm-age").val(data.schmAgeNm);
		    	  $("#schm-region").val(data.schmRegionNm);
		    	  $("#schm-time").val(data.schmTimeNm);
		    	  $("#schm-content").val(data.schmContent);
		    	  $("#schm-phone").val(data.schmPhone);
	    	  });
	      }
	      function openModalTeam(id) {
	    	  $.get("/searchTeamMem/searchTeam.ajax", {schtNo: id}, function (data) {
	    		  $("#section1Label").html(data.schtNo+"번 게시물");
		    	  $("#scht-title").val(data.schtTitle);
		    	  $("#scht-name").val(data.schtName);
		    	  $("#scht-position").val(data.schtPositionNm);
		    	  $("#scht-age").val(data.schtAgeNm);
		    	  $("#scht-region").val(data.schtRegionNm);
		    	  $("#scht-time").val(data.schtTimeNm);
		    	  $("#scht-content").val(data.schtContent);
		    	  $("#scht-phone").val(data.schtPhone);
	    	  });
	      }
	      </script>
    </body>
</html>
