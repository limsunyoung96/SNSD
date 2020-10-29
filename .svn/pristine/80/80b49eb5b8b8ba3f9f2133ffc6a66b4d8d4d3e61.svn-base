<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mytag" tagdir="/WEB-INF/tags"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>Social Network Soccer Dreaming</title>
<style>
#homeIMG {
	/* 원하는 메인이미지를 resources안에 images폴더에 넣은 후 이미지 변경해주세요 */
	background:
		url(${pageContext.request.contextPath}/resources/images/searchMemback.jpg)
		no-repeat center center;
	background-size: cover;
}
th{
	text-align:center;
}
#search-box{
	height: 140px;
	padding-top: 50px;
}

#searchTeam{
	height: 400px;
}
table{
	margin-top: 50px;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<div class="culmn">
		<%@ include file="/WEB-INF/inc/top.jsp"%>
		<!--home Section -->
		<section id="homeIMG" class="home">
			<div class="overlay">
				<div class="home_skew_border">
					<div class="container">
						<div class="row">
							<div class="col-sm-12 ">
								<div class="main_home_slider text-center">
									<div class="single_home_slider">
										<div class="main_home wow fadeInUp" data-wow-duration="700ms">
											<!-- 멘트만 바꿔주세용</p> -->
											<h3>BOARD</h3>
											<h1>팀원구하기</h1>
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
		</section>
		<!--End of home section -->
		<!--home Section -->

		<div class="container">
			<div class="panel-body">
				<form name="frm_search" action="searchMemList.sc" method="post"
					class="form-horizontal">
					<input type="hidden" name="curPage" value="${searchVO.curPage}">
					<input type="hidden" name="rowSizePerPage"
						value="${searchVO.rowSizePerPage}">
					<div class="form-group" id="search-box">
						<label for="id_searchType" class="col-sm-2 control-label">검색</label>
						<div class="col-sm-2">
							<select id="id_searchType" name="searchType"
								class="form-control">
								<option value="W"
									${searchVO.searchType eq "W" ? "selected='selected'" : "" }>작성자</option>
								<option value="T"
									${searchVO.searchType eq "T" ? "selected='selected'" : "" }>제목</option>
							</select>
						</div>
						<div class="col-sm-2">
							<input type="text" name="searchWord"
								class="form-control " value="${searchVO.searchWord }"
								placeholder="검색어를 입력하세요">
						</div>
						<label for="id_searchCategory"
							class="col-sm-2 col-sm-offset-2 control-label">포지션 분류</label>
						<div class="col-sm-2">
							<select id="id_searchPosition" name="searchPosition"
								class="form-control">
								<option value="">-- 전체 --</option>
								<c:forEach items="${positionList}" var="code">
									<option value="${code.commCode}"
										${code.commCode eq searchVO.searchPosition ? "selected='selected'" : "" }>${code.commName}</option>
								</c:forEach>
							</select>
						</div>
						<label for="id_searchRegion"
							class="col-sm-2 col-sm-offset-8 control-label">지역 분류</label>
						<div class="col-sm-2">
							<select id="id_searchRegion" name="searchRegion"
								class="form-control">
								<option value="">-- 전체 --</option>
								<c:forEach items="${regionList}" var="code">
									<option value="${code.commCode}"
										${code.commCode eq searchVO.searchRegion ? "selected='selected'" : "" }>${code.commName}</option>
								</c:forEach>
							</select>
						</div>

					</div>


					<div class="form-group">
						<div class="col-xs-6 col-sm-1 text-right">
							<a href="searchMem.sc" class="btn btn-lg"> <span
								class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
								&nbsp;새글쓰기
							</a>
						</div>
						<div class="col-sm-11 text-right">
							<button type="submit" class="btn btn-lg">
								<i class="fa fa-search"></i> &nbsp;&nbsp;검 색
							</button>
						</div>
					</div>
				</form>
			</div>

			<!-- END : 검색 폼  -->
			<table class="table table-hover"  id="searchTeam">
				<colgroup>
					<col width="10%" />
					<col width="15%" />
					<col />
					<col width="10%" />
					<col width="15%" />
					<col width="10%" />
				</colgroup>
				<thead>
					<tr class="text-center">
						<th>글번호</th>
						<th>팀이름</th>
						<th>제목</th>
						<th>포지션</th>
						<th>지역</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memList}" var="mem">
						<tr class="text-center">
							<td>${mem.schmNo}</td>
							<td>${mem.tmName}</td>
							<td><a href="searchMemView.sc?schmNo=${mem.schmNo}">${mem.schmTitle}</a>
							</td>
							<td>${mem.schmPositionNm}</td>
							<td>${mem.schmRegionNm}</td>
							<td>${mem.schmRegDate}</td>
							<td>${mem.schmHit}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- START : 페이지네이션  -->
			<nav class="text-center">
				<mytag:paging pagingVO="${searchVO}" linkPage="searchMemList.sc" />
			</nav>
			<!-- END : 페이지네이션  -->
		</div>
		<%@ include file="/WEB-INF/inc/footer.jsp"%>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
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

			//검색버튼 클릭
			$(f).submit(function(e) {
				e.preventDefault();
				f.curPage.value = 1;
				f.submit();
			}); // f.submit

			//목록갯수변경
			//id_rowSizePerPage 변경되었을때
			//page 1로 설정, 목록수를 현재값으로 변경

			$("#id_rowSizePerPage").change(function(e) {
				f.curPage.value = 1;
				f.rowSizePerPage.value = this.value; //this.options~~
				f.submit();
			}); //id_rowSizePerPage

			//초기화 버튼 클릭
			$("#id_btn_reset").click(function(e) {
				f.curPage.value = 1;
				f.searchWord.value = "";
				f.searchType.options[0].selected = true;
				f.searchPosition.options[0].selected = true;
				f.searchRegion.options[0].selected = true;
			}); // #id_btn_reset.click
		</script>
</body>
</html>
