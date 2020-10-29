<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/inc/header.jsp"%>
<title>글 등록</title>
<script type="text/javascript">

	$(document).ready(function() {
		// 파일 추가버튼 클릭 이벤트 
		$('#id_btn_new_file').click(function(){
				$('.file_area').append(
						'<div class="form-inline">'
					+ '<input type="file" name="boFiles" class="form-control">'
					+ ' <button type="button" class="btn_delete btn btn-sm">삭제</button>'
					+ '</div>');
		}); // #id_btn_new_file.click
		
		// 파일 삭제버튼 클릭 이벤트 (동적으로 추가된 객체의 이벤트를 사용시 on.. )
		$('.file_area').on('click','.btn_delete', function() {
			$(this).closest('div').remove();
		}); // .btn_delete.click
		
	}); // document.ready


</script>

</head>
<body>
<%@include file="/WEB-INF/inc/top.jsp"%>
<div class="container">
	<div class="page-header">
		<h3>글 등록</h3>
	</div>
	<div class="row" >	
	
	<form:form action="noticeRegist.sc" modelAttribute="notice" 
	           method="post" enctype="multipart/form-data" >
	<table class="table table-striped table-bordered">
		<colgroup>
			<col width="20%" />
			<col/>
		</colgroup>
		<tr>
			<th>제목</th>
			<td>
					<form:input path="boTitle" cssClass="form-control input-sm" />
					<form:errors path="boTitle" />
			</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>
					<form:input path="boWriter" cssClass="form-control input-sm" />
					<form:errors path="boWriter" />
			</td>
		</tr>
		
		
		<tr>
			<th>내용</th>
			<td>
				<form:textarea path="boContent" rows="5" cssClass="form-control" /></textarea>				
			</td>
		</tr>
		<tr>
			<td colspan="2">
					<div class="pull-left">
						<a href="noticeList.sc" class="btn btn-sm btn-default">목록으로</a>
					</div>
					<div class="pull-right">
						<button type="submit" class="btn btn-sm btn-primary">저장하기</button>
					</div>
			</td>
		</tr>
	</table>
	</form:form>
	</div>
	
</div>
</body>
</html>


