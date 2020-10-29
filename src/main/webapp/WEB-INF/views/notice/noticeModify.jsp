<%@page import="kr.co.soccer.notice.service.NoticeBoardServiceImpl"%>
<%@page import="kr.co.soccer.exception.BizPasswordNotMatchedException"%>
<%@page import="kr.co.soccer.notice.service.INoticeBoardService"%>
<%@page import="kr.co.soccer.exception.BizNotFoundException"%>
<%@page import="kr.co.soccer.exception.BizNotEffectedException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/WEB-INF/inc/header.jsp" %>
	<title>memberRegist.jsp </title>
</head>
<body>
 <div class="container">	
	<h3>글 수정</h3>
	<jsp:useBean id="board" class="kr.co.soccer.notice.vo.NoticeBoardVO" />
	<jsp:setProperty property="*" name="board" />
	<% 
	INoticeBoardService noticeBoardService = new NoticeBoardServiceImpl();
	try {
		noticeBoardService.modifyBoard(board);
	%>
	<div class="alert alert-warning">
		<h4>수정 완료.</h4>
		정상적으로 글을 수정하였습니다.
	</div>
	<%
	} catch (BizNotEffectedException ex) {
		%>
		<div class="alert alert-warning">
			<h4>수정이 완료되지 않았습니다.</h4>
			올바르게 수정되었는지 확인해주세요.
		</div>
		<%
	} catch (BizNotFoundException ex) {
		%>
		<div class="alert alert-warning">
			<h4>해당 글이 존재하지 않습니다.</h4>
			올바르게 접근해주세요.
		</div>
		<%
	}
	%>
	<a href="noticeList.jsp" class="btn btn-info btn-sm">
	<span class="glyphicon glyphicon-list" aria-hidden="true"></span>&nbsp;&nbsp;목록</a>
</body>
</html>