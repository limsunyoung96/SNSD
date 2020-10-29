<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>등록 에러</title>
</head>
<body>
	<div class="container">
	<div class="row col-md-8 col-md-offset-2">
			<div class="page-header">
				<h3>${messageVO.title}</h3>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<p>리그 지원 에러</p>
				</div>
				<div class="panel-body">
					<div><h4>이미 지원한 팀입니다.</h4></div>
					<div class="pull-right">
						<a href="/index.jsp" onclick="history.back()" class="btn btn-lg m_t_10">
							<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>
							&nbsp;홈으로
						</a> &nbsp;&nbsp;
						<a href="applyList.sc" class="btn btn-lg m_t_10"> <span
							class="glyphicon glyphicon-list" aria-hidden="true"></span>
							&nbsp;&nbsp;참가 확정 목록
						</a>
					</div>
				</div>
			</div>
		</div>
</body>
</html>