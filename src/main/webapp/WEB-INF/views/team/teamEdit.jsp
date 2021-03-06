<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/inc/header.jsp"%>
<title>팀정보 수정</title>
<style>
	.logoImg{
		width: 15%;
	}
</style>
</head>
<body>
<div class="container">
  <div class="page-header">
    <h2><img class="logoImg" alt="SNSD" src="${pageContext.request.contextPath}/resources/images/LOGO/LeagueLOGO_main.png"> 팀 정보 수정</h2>
  </div>
	
	<form:form action="teamModify.sc" modelAttribute="boardVO"
				enctype="multipart/form-data">
	<form:hidden path="tmId"/>
	
	<table class="table">
		<colgroup>
			<col width="20%" />
			<col/>
		</colgroup>
		<tr>
			<th>대표 이미지 선택</th>
			<td class="file_area">
				<div class="form-inline">
					<input type="file" name="tmAtch" class="form-control">
				</div>
			</td>
		</tr>
		<tr>
			<th>팀 이름</th>
			<td>
				<form:input path="tmName" cssClass="form-control"/>
				<form:errors path="tmName" />
			</td>
		</tr>
		<tr>
			<th>팀원</th>
			<td>
				<form:textarea path="tmMem" cssClass="form-control"/>
				<span >팀원들의 정보를 적으시면 됩니다.</span>
				<form:errors path="tmMem" />
			</td>
		</tr>
		<tr>
			<th>콘텐츠</th>
			<td>
				<form:textarea path="tmContent" cssClass="form-control"/>
				<span>포부나 팀소개를 간단히 작성하세요.</span>
				<form:errors path="tmContent" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
          <div class="pull-left">
              <a href="teamList.wow" class="btn btn-lg"> 
                <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
                &nbsp;&nbsp;목록
              </a>
            </div>
            
            <div class="pull-right">
              <button type="submit" class="btn btn-lg" > 
                <span class="glyphicon glyphicon-save" aria-hidden="true"></span>
                &nbsp;&nbsp;저장
              </button>
            </div>					
			</td>
		</tr>
	</table>
	</form:form>
</div><!-- container -->
</body>
</html>


