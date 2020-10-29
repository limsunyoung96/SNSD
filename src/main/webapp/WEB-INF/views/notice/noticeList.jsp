<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="mytag" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html class="no-js" lang="">
<html lang="ko">
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<%@include file="/WEB-INF/inc/header.jsp" %>
<title>Social Network Soccer Dreaming</title>
<style>
    #homeIMG{
    /* 원하는 메인이미지를 resources안에 images폴더에 넣은 후 이미지 변경해주세요 */
    background: url(${pageContext.request.contextPath}/resources/images/notice.jpeg) no-repeat center center;
    background-size: cover;
}
.col-sm-offset-9 {
    margin-left: 67%;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
        <div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <div class="culmn">
        <%@ include file="/WEB-INF/inc/top.jsp" %>
        <!--home Section -->
            <section id="homeIMG" class="home" >
                <div class="overlay">
                    <div class="home_skew_border">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    <div class="main_home_slider text-center">
                                        <div class="single_home_slider">
                                            <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                                		<!-- 멘트만 바꿔주세용</p> -->
                                                <h3> "꼭 읽어주세요" </h3>
                                                <h1> 공지사항 전달 </h1>
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
            </section><!--End of home section -->
<div class="container">
	<div class="page-header">
		<h3>공지사항 <small></small></h3>
	</div>
	
<!-- START : 검색 폼  --> 
<div class="collapse in panel panel-default" id="id_search_area" >
  <div class="panel-body">
    <form name="frm_search" action="noticeList.sc" method="post" class="form-horizontal">
        <input type="hidden" name="curPage" value="${searchVO.curPage }">
        <input type="hidden" name="rowSizePerPage" value="${searchVO.rowSizePerPage}">
          <div class="form-group">
            <label for="id_searchType" class="col-sm-2 control-label">검색</label>
            <div class="col-sm-2">
                <select id="id_searchType" name="searchType" class="form-control input-sm">			    		
                    <option value="T" ${searchVO.searchType eq "T" ? "selected='selected'" : ""} >제목</option>
                    <option value="C" ${searchVO.searchType eq "C" ? "selected='selected'" : ""}>내용</option>
                </select>
            </div>
            <div class="col-sm-2">	
              <input type="text" name="searchWord" class="form-control input-sm" 
                     value="${searchVO.searchWord}" placeholder="검색어" >			      
            </div>
            
          </div>
          <div class="form-group">
            <div class="col-sm-2 col-sm-offset-9 text-right" >
              <button type="button" id="id_btn_reset" class="btn btn-sm btn-primary">
                    <i class="fa fa-sync"></i>
                    &nbsp;&nbsp;초기화 
                </button>
            </div>     
            <div class="col-sm-1 text-right" >
                <button type="submit" class="btn btn-sm btn-primary ">
                    <i class="fa fa-search"></i>
                    &nbsp;&nbsp;검 색
                </button>
            </div>
          </div>
    </form>
  </div>
</div>
<!-- END : 검색 폼  --> 	
	
<!-- START : 목록건수 및 새글쓰기 버튼  --> 
<div class="row" style="margin-bottom: 10px;">
    <div class="col-sm-3 form-inline"  >
        전체 ${searchVO.totalRowCount} 건 조회
        <select id="id_rowSizePerPage" name="rowSizePerPage" class="form-control input-sm" >
            <option value="10" ${searchVO.rowSizePerPage eq 10 ? "selected='selected'" : ""}>10</option>
            <option value="20" ${searchVO.rowSizePerPage eq 20 ? "selected='selected'" : ""}>20</option>
            <option value="30" ${searchVO.rowSizePerPage eq 30 ? "selected='selected'" : ""}>30</option>
            <option value="50" ${searchVO.rowSizePerPage eq 50 ? "selected='selected'" : ""}>50</option>
        </select>
    </div>
    
    
    <!-- 관리자로 로그인했을때만 새글쓰기가 보인다. -->
    <div class="col-sm-1 text-right" >
    	
    	<%
    		UserVO user = (UserVO)session.getAttribute("USER_INFO");
    		if(user == null) {
    	%>
    		<a href="<%=request.getContextPath() %>/login.sc" class="btn btn-primary btn-sm"> 
            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
            &nbsp;새글쓰기
			</a>
		<%
   			}else if(user.getUserId().equals("admin")) {
		%>
    	
	        <a id="id_newWrite" href="noticeForm.sc" class="btn btn-primary btn-sm"> 
	            <span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>
	            &nbsp;새글쓰기
				</a>
		<%
    		}
		%>
    </div>
</div>
<!-- END : 목록건수 및 새글쓰기 버튼  --> 

	<table class="table table-striped table-bordered table-hover">
	<colgroup>
		<col width="10%" />
		<col />
		<col width="10%" />
		<col width="15%" />
		<col width="10%" />
	</colgroup>
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>
	</thead>	
	<tbody>
	<c:forEach var="bo" items="${boards}">
		<tr class="text-center">
			<td>${bo.boNo}</td>
			<td class="text-left">
				<a href="noticeView.sc?boNo=${bo.boNo}">
					${bo.boTitle}
				</a>
			</td>
			<td>${bo.boWriter}</td>
			<td>${bo.boModDate == null ? bo.boRegDate:bo.boModDate}</td>
			<td>${bo.boHit}</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	
<!-- START : 페이지네이션  --> 
<nav class="text-center">
	<mytag:paging pagingVO="${searchVO}" linkPage="noticeList.sc"/>
</nav>
<!-- END : 페이지네이션  --> 	
	
	</div><!-- .container -->

<script type="text/javascript">

	// 변수 정의 
	var f = document.forms['frm_search'];

	// 함수 정의 
	
	
	// 각 이벤트 등록
	
	// 페이지 링크 클릭 
	$('ul.pagination > li > a[data-page]').click(function(e) {
		e.preventDefault(); // 이벤트 전파 방지 , a의 href로 이동 금지 
		// data-page 에 있는 값을 f.curPage.value 에 설정 , 서브밋 
		f.curPage.value = $(this).data('page');
		f.submit();
	});	// ul.pagination > li > a[data-page]
	
	// 검색버튼 클릭 
	$(f).submit(function(e) {
		e.preventDefault();
		f.curPage.value = 1;
		f.submit();
	}); // f.submit
	
	// 목록갯수 변경
	$('#id_rowSizePerPage').change(function(e) {
		// 페이지 1, 목록수 = 현재 값으로 변경 후 서브밋
		f.curPage.value = 1;
		f.rowSizePerPage.value = this.value;// 
		f.submit();
	}); // '#id_rowSizePerPag'.change
	
	// 초기화 버튼 클릭
	$('#id_btn_reset').click(function() {
		f.curPage.value = 1;
		f.searchWord.value = "";
		f.searchType.options[0].selected = true;
		f.searchCategory.options[0].selected = true;		
	}); // #id_btn_reset').click
	
	// jQuery 에서 클래스삭제 및 추가, 내용변경  
	// jQuery show(), hide() , toggle() 메서드 사용하셔도 되고 
	// 부트스트랩의 collapse 참고하셔도 됩니다.
	// xxx.removeClass('fa-chevron-up').addClass('fa-chevron-down');
	// yyy.html('&nbsp; 검색열기');
	
	$('#id_search_area').on('shown.bs.collapse', function () {
		 $('#id_search_show i').removeClass('fa-chevron-down').addClass('fa-chevron-up');
		 $('#id_search_show span').html('&nbsp; 검색닫기');
	});
	
	$('#id_search_area').on('hidden.bs.collapse', function () {
		 $('#id_search_show i').removeClass('fa-chevron-up').addClass('fa-chevron-down');
		 $('#id_search_show span').html('&nbsp; 검색열기');
	});
	
	
		</script>
		<%@ include file="/WEB-INF/inc/footer.jsp" %>
		<%@ include file="/WEB-INF/inc/footer2.jsp" %>
	</body>
</html>




