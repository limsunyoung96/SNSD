<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/WEB-INF/inc/header.jsp"%>

<title>글 등록</title>

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
                                                <h3> "자신의 팀을 소개하세요" </h3>
                                                <h1> SNSD 최고의 팀은? </h1>
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


<script type="text/javascript" src="<c:url value="/ckeditor/ckeditor.js" />"></script>











<div class="container">
	<div class="page-header">
		<h3>글 등록</h3>
	</div>
	<div class="row" >	
	
	<form:form action="freeRegist.sc" modelAttribute="free" 
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
				<textarea name="boContent" cols="80" rows="10"></textarea>
				<script>

					CKEDITOR.replace('boContent');
				</script>
							
			</td>
		</tr>
		<tr>
			<td colspan="2">
					<div class="pull-left">
						<a href="freeList.sc" class="btn btn-sm btn-default">목록으로</a>
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




	<%@ include file="/WEB-INF/inc/footer.jsp" %>
	<%@ include file="/WEB-INF/inc/footer2.jsp" %>

</body>
</html>


