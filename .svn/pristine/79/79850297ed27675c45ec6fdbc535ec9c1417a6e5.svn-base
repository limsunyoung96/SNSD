<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mytage" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@include file="/WEB-INF/inc/header.jsp"%>
<title>팀 리스트</title>
<style>
	#main_menu{
		background-color: rgba(34, 61, 97, 0.64);
	}
	body{
		margin-top: 200px;
	}
	#search{
		float: right;
		width: 23%;
	}
	#searchWord{
		float: left;
		width: 77%;
	}
	#team{
		float: right;
		margin-right: 88px;
	}
</style>
</head>
<body>
	<%@include file="/WEB-INF/inc/top.jsp"%>
	<div class="container">
		<div class="page-header">
			<h2>팀 목록보기</h2>
		</div>
		<!-- START : 검색 폼  -->
		<div class="collapse.in panel panel-default" id="id_search_area">
			<div class="panel-body">
				<form name="frm_search" action="teamList.sc" method="post"
					class="form-horizontal">
					<input type="hidden" name="curPage" value="${searchVO.curPage}">
					<input type="hidden" name="rowSizePerPage"
						value="${searchVO.rowSizePerPage}">
					<div class="form-group" id="searchWord">
						<label for="id_searchType" class="col-sm-2 control-label">검색</label>
						<div class="col-sm-2">
							<select id="id_searchType" name="searchType"
								class="form-control">
								<option value="TN"
									${searchVO.searchType eq "TN" ? "selected='selected'": "" }>팀 이름</option>
								<option value="TMN"
									${searchVO.searchType eq "TMN" ? "selected='selected'": "" }>주장 이름</option>
								<option value="TMID"
									${searchVO.searchType eq "TMID" ? "selected='selected'": "" }>주장 아이디</option>
							</select>
						</div>
						<div class="col-sm-7">
							<input type="text" name="searchWord"
								class="form-control" value="${searchVO.searchWord}"
								placeholder="검색어를 입력하세요">
						</div>
					</div>
					<div class="form-group" id="search">
						<div class="col-sm-1 text-right">
							<button type="submit" class="btn btn-primary">
								<i class="fa fa-search"></i> &nbsp;&nbsp;검 색
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- END : 검색 폼  -->

		<!-- START : 목록건수 및 새글쓰기 버튼  -->
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-sm-3 form-inline">
				전체 ${searchVO.totalRowCount} 건 조회 <select id="id_rowSizePerPage"
					name="rowSizePerPage" class="form-control">
					<option value="10" ${searchVO.rowSizePerPage eq "10" ? "selected='selected'": "" }>10</option>
					<option value="20" ${searchVO.rowSizePerPage eq "20" ? "selected='selected'": "" }>20</option>
					<option value="30" ${searchVO.rowSizePerPage eq "30" ? "selected='selected'": "" }>30</option>
					<option value="50" ${searchVO.rowSizePerPage eq "50" ? "selected='selected'": "" }>50</option>
				</select>
			</div>
			<div class="col-sm-1 text-right" id="team">
				<a href="teamForm.sc" class="btn btn-lg"> <span
					class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
					&nbsp;팀 만들기
				</a>
			</div>
		</div>
		<!-- END : 목록건수 및 새글쓰기 버튼  -->


		<table class="table table-hover ">
			<colgroup>
				<col width="5%" />
				<col width="15%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="28%" />
				<col width="22%" />
			</colgroup>
			<thead>
				<tr class="text-center">
					<th>대표사진</th>
					<th>팀 이름</th>
					<th>대표 이름</th>
					<th>대표 아이디</th>
					<th>팀 창단일</th>
					<th>멤버</th>
					<th>소개</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tm" items="${teams}">
					<tr class="text-center teamInfo" >
						<td>
						<a href="${pageContext.request.contextPath}/uploads/${tm.tmAtchName}" class="portfolio-img">
			           	<img alt="No Image" src="${pageContext.request.contextPath}/uploads/${tm.tmAtchName}" /> </a>  
						</td>
						<td><a href="teamView.sc?tmId=${tm.tmId}">${tm.tmName}</a></td>
						<td>${tm.memName} </td>
						<td>${tm.memId}</td>
						<td>${tm.tmRegDate}</td>
						<td>${tm.tmMem}</td>
						<td>${tm.tmContent}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- START : 페이지네이션  -->
		<nav class="text-center">
			<mytage:paging pagingVO="${searchVO}" linkPage="teamList.sc" />
		</nav>
		<!-- END : 페이지네이션  -->

	</div>
	<!-- .container -->
	<script type="text/javascript">
		// 변수 정의
		var f = document.forms['frm_search'];

		// 함수 정의

		// 각 이벤트 등록

		// 페이지 링크 클릭
		$('ul.pagination > li > a[data-page]').click(function(e) {
			e.preventDefault(); // 이벤트 전파 방지. a의 href로 이동 금지
			// data-page 에 있는 값을 f.curPage.value에 설정, 서브밋
			f.curPage.value = $(this).data('page');
			f.submit();
			// alert(this.innerHTML);
		});

		// 검색버튼 클릭
		$(f).submit(function(e) {
			e.preventDefault();
			f.curPage.value = 1;
			f.submit();
		});
		
		// 목록갯수 변경
		// id_rowSizePerPage 변경되었을 때
		$('#id_rowSizePerPage').change(function(e){
		// 페이지 1, 목록수 = 현재 값으로 변경후 서브밋
			/* alert($(this).val()); */
			f.curPage.value = 1;
			f.rowSizePerPage.value = this.value;
			f.submit();
		}); // #id_rowSizePerPage . change
		
		
		$('#id_btn_reset').click(function(){
			f.curPage.value = 1;
			f.searchWord.value = "";
			f.searchType.options[0].selected = true;
			// f.searchCategory.options[0].selected = true;
		});// #id_btn_reset . click
		
			
		$('#id_search_area').on('hidden.bs.collapse', function() {
			$('#id_search_show i').removeClass('fa-chevron-up').addClass('fa-chevron-down');
			$('#id_search_show span').html("&nbsp; 검색열기")
		})
		$('#id_search_area').on('shown.bs.collapse', function() {
			$('#id_search_show i').removeClass('fa-chevron-down').addClass('fa-chevron-up');
			$('#id_search_show span').html("&nbsp; 검색닫기")
		})
		
		
	</script>
		<%@ include file="/WEB-INF/inc/footer.jsp" %>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
</body>
</html>




