<!-- 아직 안함 관리자 하고서 하깅 -->
<%@page import="kr.co.soccer.code.CodeVO"%>
<%@page import="kr.co.soccer.code.ICommonCodeService"%>
<%@page import="kr.co.soccer.code.CommonCodeServiceImpl"%>
<%@page import="kr.co.soccer.member.MemberVO"%>
<%@page import="kr.co.soccer.member.MemberServiceImpl"%>
<%@page import="kr.co.soccer.member.IMemberService"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>LeagueList</title>
<style>
table {
	margin-top: 200px;
}

.main_menu_bg {
	margin-top: 0px;
	background-color: rgba(34, 61, 97, 0.64);
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<table class="table table-bordered">
			<caption class="hidden+">리그 상세내역 조회</caption>
<%-- 			<colgroup>
				<col style="width: 7%" />
				<col style="width: 15%" />
				<col style="width: 15%" />
				<col style="width: 15%" />
				<col style="width: 15%" /> 
			</colgroup>--%>
			<thead>
				<tr>
					<th>참가팀</th>
					<th>팀 아이디</th>
					<th>주장 아이디</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="league" items="${leagues}">
					<tr>
						<td>${league.lgJoin }</td>
						<td>${league.tmId }</td>
						<td>${league.memId }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table><!-- ${param.lgCode },${lgCode } -->
		<c:if test="${isConfirm eq 0}">
			<a href="/league/leagueConfirm.sc?lgCode=${lgCode}" class="btn btn-lg">
				<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>&nbsp;일정확정
			</a>
		</c:if>
		<div class="pull-left">
			<a href="javascript:history.back()" class="btn btn-lg">
				<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>&nbsp;뒤로가기
			</a>
		</div>
		<div class="pull-left">
			<a href="/league/leagueResultView.sc?lgCode=${lgCode}" class="btn btn-lg">
				<span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>&nbsp;경기결과
			</a>
		</div>
		<div class="pull-right">
			<a href="/league/leagueSchedule.sc?lgCode=${lgCode}" class="btn btn-lg">
				점수입력하러 가기&nbsp;<span class="glyphicon glyphicon-arrow-right" aria-hidden="true"></span>
			</a>
		</div>
		<!-- START : 페이지네이션  -->
		<nav class="text-center">
			<mytag:paging pagingVO="${searchVO}" linkPage="leagueList.sc" />
		</nav>
		<!-- END : 페이지네이션  -->
	</div>
	<script type="text/javascript">
		// 변수 정의
		var f = document.forms['frm_search'];

		//함수 정의

		//각 이벤트 등록
		// 페이지 링크 클릭
		$('ul.pagination > li > a[data-page]').click(function(e) {
			e.preventDefault(); // 이벤트 전파방지 (a로 href 이동 방지)
			//data-page에 있는 값을 f.curPage.value에 설정하고 submit
			f.curPage.value = $(this).data('page');
			f.submit();
		}); //ul.pagination > li > a[data-page]
	</script>
</body>
</html>