<!-- 아직 안함 관리자 하고서 하깅 -->
<%@page import="kr.co.soccer.code.CodeVO"%>
<%@page import="kr.co.soccer.code.ICommonCodeService"%>
<%@page import="kr.co.soccer.code.CommonCodeServiceImpl"%>
<%@page import="kr.co.soccer.member.MemberVO"%>
<%@page import="kr.co.soccer.member.MemberServiceImpl"%>
<%@page import="kr.co.soccer.member.IMemberService"%>
<%@page import="kr.co.soccer.login.UserVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/WEB-INF/inc/header.jsp" %>
	<title>LeagueList </title>
	<style>
		table{
			margin-top: 200px;
		}
		.main_menu_bg {
 			margin-top: 0px;
    		background-color: rgba(34, 61, 97, 0.64);
		}
	</style>
</head>
<body>
	<%@ include file="/WEB-INF/inc/top.jsp" %>
 <div class="container">	
			
	<table class="table table-bordered">
		<caption class="hidden+">리그목록 조회</caption>	
		<colgroup>
			<col style="width: 7%" />
			<col style="width: 15%" />
			<col style="width: 15%" />
			<col style="width: 15%" />
			<col style="width: 15%" />
		</colgroup>
		<thead>
			<tr>
				<th>리그코드</th>
				<th>이름</th>
				<th>시작날짜</th>
				<th>종료날짜</th>
				<th>개최지역</th>
			</tr>
		</thead>
		<tbody>
				<%
					UserVO user = (UserVO)session.getAttribute("USER_INFO");
		    		if(user != null && user.getUserId().equals("admin")) {
		    	%>
	    			<c:forEach var="league" items="${leagues}"  >
						<tr>
							<td>${league.lgCode}</td>
							<td><a href="/league/leagueView.sc?lgCode=${league.lgCode}">${league.lgName} <small> - 일정 확정하러 가기 </small></a></td>
							<td>${league.startDate}</td>
							<td>${league.endDate}</td>
							<td>${league.lgRegion }</td>
						</tr>
					</c:forEach>
				<%
	    			}else{
				%> 
					<c:forEach var="leagueForGuest" items="${leaguesForGuests}"  >
						<tr>
							<td>${leagueForGuest.lgCode}</td>
							<td><a href="/league/leagueSchedule.sc?lgCode=${leagueForGuest.lgCode}">${leagueForGuest.lgName}</a></td>
							<td>${leagueForGuest.startDate}</td>
							<td>${leagueForGuest.endDate}</td>
							<td>${leagueForGuest.lgRegion }</td>
						</tr>
					</c:forEach>
				<%
	    			}
				%> 
					
		</tbody>	
	</table>
	
	
	<!-- START : 페이지네이션  -->
		<nav class="text-center">
			<mytag:paging pagingVO="${searchVO}" linkPage="leagueList.sc"/>
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