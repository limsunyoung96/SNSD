<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
	<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
	<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
	<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
	<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
    <%@ include file="/WEB-INF/inc/header.jsp" %>
    <title>Social Network Soccer Dreaming</title> 
    <style>
    #homeIMG{
    /* 원하는 메인이미지를 resources안에 images폴더에 넣은 후 이미지 변경해주세요 */
    background: url(${pageContext.request.contextPath}/resources/images/trophy.jpg) no-repeat center center;
    background-size: cover;
	}
	th{
	text-align: center;
	}
	tr{
	text-align: center;
	}
	td{
	text-align: center;
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
                                                <h1>League</h1>
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
            
           <!-- Pricing Section -->
            <section id="pricing" class="pricing" style="padding-top:120px;">
                <div class="container">
                    <div class="row">
                        <div class="main_pricing_area sections">
                            <div class="head_title text-center">
                                <h2>NEXT IT LEAGUE</h2>
                                <div class="subtitle">
                                    올 여름, 그대들의 가슴을 뜨겁게 달구는 ${league.lgName} 리그전
                                </div>
                                <div class="separator"></div>
                            </div><!-- End off Head_title -->
								<div>
								<a
									href="/league/leagueStatusExcel.sc"
									class="btn btn-danger btn-xs" style="float:right; margin-bottom:20px"><span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>&nbsp;&nbsp;엑셀 다운로드</a>
									<br>
									<table class="table table-hover">
										<tr>
											<th>순위</th>
											<th>팀 이름</th>
											<th>경기 수</th>
											<th>승</th>
											<th>무</th>
											<th>패</th>
											<th>득점</th>
											<th>실점</th>
											<th>골득실</th>
											<th>승점</th>
										</tr>
										<c:forEach var="result" items="${leagueResult}">
										<tr>
											<td>${result.rank}</td>
											<td>${result.tmNm}</td>
											<td>${result.rsltPlayed}</td>
											<td>${result.rsltWin}</td>
											<td>${result.rsltDraw}</td>
											<td>${result.rsltLose}</td>
											<td>${result.rsltGf}</td>
											<td>${result.rsltGa}</td>
											<td>${result.rsltGd}</td>
											<td>${result.rsltPoint}</td>
										</tr>
										</c:forEach>
									</table>
								</div>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Pricing Section -->
            
            
		<%@ include file="/WEB-INF/inc/footer.jsp" %>
       <%@ include file="/WEB-INF/inc/footer2.jsp"%>
    </body>
</html>
