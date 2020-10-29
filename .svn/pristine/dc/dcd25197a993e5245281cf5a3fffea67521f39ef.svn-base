<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mytage" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/inc/header.jsp"%>
<title>리그 참가 선발팀</title>
</head>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<div class="page-header">
			<h3>신청 결과 - <small>리그 참가 선발 팀 명단</small></h3>
			<%-- ${searchVO} --%>
		</div>

		<table class="table table-striped table-bordered table-hover">
			<colgroup>
				<col width="10%" />
				<col width="15%" />
				<col width="15%" />
				<col width="10%" />
			</colgroup>
			<thead>
				<tr>
					<th>리그명</th>
					<th>팀이름</th>
					<th>신청일</th>
					<th>결과</th>
				</tr>
			</thead>
			
			<!-- // START : 글 목록 영역  -->
			<tbody id="id_list_area"></tbody>
			<tbody>
				<c:if test="${not empty applys}">
					<c:forEach var="ap" items="${applys}">
						<tr class="text-center">
							<td>${ap.lgName}</td>
							<td class="text-left"><a href="applyView.sc?boNo=${ap.boNo}">
									${ap.tmName} </a></td>
							<td>${ap.regDate}</td>
							<td>${ap.result eq 'N' ? ' ':ap.result}</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${empty applys}">
					<h2>아직 결과가 나오지 않았습니다. <br>조금만 기다려주세요.</h2>
				</c:if>
			</tbody>
		</table>
	</div>
	<!-- .container -->
	
</body>
</html>




