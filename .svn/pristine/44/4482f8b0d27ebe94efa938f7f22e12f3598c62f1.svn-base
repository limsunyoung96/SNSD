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
		url(${pageContext.request.contextPath}/resources/images/searchTeamBack.jpg)
		no-repeat center center;
	background-size: cover;
}
th{
text-align: center;
}
td{
text-align: center;
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
											<h3>TEMPLATE</h3>
											<h1>BOARD</h1>
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

		 <!-- Pricing Section -->
            <section id="pricing" class="pricing" style="padding-top:120px;">
                <div class="container">
                    <div class="row">
                        <div class="main_pricing_area sections">
                            <div class="head_title text-center">
                                <h2>Find my team</h2>
                                <div class="subtitle">
                                    나와 맞는 팀/팀원을 찾아보세요
                                </div>
                                <div class="separator"></div>
                            </div><!-- End off Head_title -->
								<div>
									<table class="table table-hover">
										<tr>
											<th>글번호</th>
											<th>작성자</th>
											<th>제목</th>
											<th>등록일</th>
											<th>매칭율</th>
										</tr>
										<tr>
										<c:if test="${0 ne sessionScope.USER_INFO.userTeamId}">
										<c:forEach items="${list}" var="team">
											<td>${team.schtNo}</td>
											<td>${team.schtName}</td>
											<td><a href="<%=request.getContextPath() %>/search/searchTeamView.sc?schtNo=${team.schtNo}">${team.schtTitle}</a></td>
											<td>${team.schtRegDate}</td>
											<td>${team.searchResult}</td>
										</tr>
										</c:forEach>
										 </c:if>
										 <c:if test="${0 eq sessionScope.USER_INFO.userTeamId}">
										<c:forEach items="${list}" var="mem">
											<td>${mem.schmNo}</td>
											<td>${mem.tmName}</td>
											<td><a href="<%=request.getContextPath() %>/search/searchMemView.sc?schmNo=${mem.schmNo}">${mem.schmTitle}</a></td>
											<td>${mem.schmRegDate}</td>
											<td>${mem.searchResult}</td>
										</tr>
										</c:forEach>
										 </c:if>
									</table>
								</div>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Pricing Section -->
            
			<!-- START : 페이지네이션  -->
			<nav class="text-center">
				<mytag:paging pagingVO="${searchVO}" linkPage="searchTeamMemList.sc" />
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
