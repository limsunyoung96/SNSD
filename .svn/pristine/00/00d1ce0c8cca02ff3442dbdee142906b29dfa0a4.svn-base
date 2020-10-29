<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/inc/header.jsp"%>
<title>리그 참가 신청</title>
<style>
	h3{
		color: #000;
	}
	#section{
		width: 45%;
		text-align: center;
	}
	.logoImg{
		width: 353px;
	}
	th{
		text-align: center;
	}
	.tdCl{
		font-size: 1.5em;
		font-weight: bold;
	}
	table{
	    margin-top: 50px;
	}
	#buttonTop{
		margin-top:30px;
	}
	.pull-left,.pull-right{
		margin-top: 100px;
	}
</style>
</head>
<body>
<div class="container" id="section">
	<a href="/"><img class="logoImg" alt="SNSD" src="${pageContext.request.contextPath}/resources/images/LOGO/LeagueLOGO_main_blue.png"></a>
	<div class="page-header">
		<h2>리그 참가 신청서</h2>
	</div>
	<div class="row" >
	<form:form action="applyRegist.sc" modelAttribute="applyVO"
				 method="post" enctype="multipart/form-data">
	<table class="table">
		<colgroup>
			<col width="30%" />
			<col width="70%" />
		</colgroup>
		<tr>
			<th>팀 이름</th>
			<td class="tdCl">
				<div>${applyVO.tmName}</div>
				<%-- <form:input disabled="true" path="tmName" cssClass="form-control input-sm"/>
				<form:errors path="tmName" /> --%>
			</td>
		</tr>
		
		<tr>
			<th>리그 이름</th>
			<td class="tdCl">
				<div>${applyVO.lgName}</div>
				<%-- <form:input disabled="true" path="lgName" cssClass="form-control input-sm"/>
				<form:errors path="lgName" /> --%>
			</td>
		</tr>
		
		<tr> 
			<th>개최 지역</th>
			<td class="tdCl">
				<c:forEach items="${categorylist}" var="code">
					<c:if test="${code.commCode eq applyVO.lgRegion}"><div>${code.commName}</div></c:if>
				</c:forEach>
				<%-- <form:input disabled="true" path="lgRegion" cssClass="form-control input-sm"/>
				<form:errors path="lgRegion" /> --%>
			</td>
		</tr>
		
		<tr id="buttonTop">
			<td colspan="2">
			<c:choose>
				<c:when test="${!empty applyVO.tmName}">
					<div>위의 사항은 변경할 수 없습니다. 내용을 확인했으면 신청하기 버튼을 눌러주세요.</div>
					<div class="pull-left">
						<a href="/index.jsp" class="btn btn-lg"><span class="glyphicon glyphicon-home" aria-hidden="true"/>&nbsp;홈으로</a>
					</div>
					<div class="pull-right">
						<button type="submit" class="btn btn-lg "><span class="glyphicon glyphicon-plus" aria-hidden="true"/>&nbsp;신청하기</button>
					</div>
				</c:when>
				<c:otherwise>
					<div><h4>속한 팀이 없어 신청을 할 수 없습니다.</h4> 리그는 팀장만 신청할 수 있으며, 팀을 신청하고자 한다면 팀을 만들어주세요.</div>
					<div class="pull-left">
						<a href="/index.jsp" class="btn btn-lg "><span class="glyphicon glyphicon-home" aria-hidden="true"/>&nbsp;홈으로</a>
					</div>
					<div class="pull-right">
						<a href="/team/teamForm.sc" class="btn btn-lg "><span class="glyphicon glyphicon-plus" aria-hidden="true"/>&nbsp;팀만들기</a>
					</div>
				</c:otherwise>
			
			</c:choose>
				
			</td>
		</tr>
	</table>
	</form:form>
	</div>
	
</div>
</body>
</html>


