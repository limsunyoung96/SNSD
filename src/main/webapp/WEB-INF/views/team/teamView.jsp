<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<title>팀 조회</title>
<style>
    #homeIMG{
    /* 원하는 메인이미지를 resources안에 images폴더에 넣은 후 이미지 변경해주세요 */
	    background: url(${pageContext.request.contextPath}/resources/images/teamInfo.jpg) no-repeat ;
	    background-size: cover;
	}
	#teamInfo{
		width:55%;
		height:auto;
		min-height: 900px;
		background: white;
		text-align: center;
		padding: 70px;
		margin-left: auto; margin-right: auto
	}
	.circle {
		width:300px; height:300px; border-radius:200px; margin:0 auto; overflow:hidden;
	}
	 .circle img {
		height:auto; width:200px;
	}
	#teamOdds{
		font-size: 37%;
	    background: pink;
	    border-radius: 35%;
	    padding: 3px;
	}
	.title2{
		font-size: 1.3em;
		font-weight: bold;
	}
	#content1{
		width: auto;
		height: 120px;
	}
	#content2{
		width: auto;
		height: 170px;
	}
	h3{
		color : #d6d6d6;
		margin : 20px 0;
	}
	th,td{
		font-size:1.1em;
	}
	#box{
		width: auto;
		height:100px;
	}
	.message{
		width:27%;
		height: 30%;
		padding: 10px;
		margin:10px;
		background:#f6f5fa;
		border-radius: 5px;
		color: #666666;
		text-align:center;
		float:left;
	}
	.msgName{
		font-size: 1.2em;
		font-weight: bold;
		color: #c56f48;
	}
	.msgP{
		border-top : 1px solid #868282;
		text-align:center;
	}
	.msgCount{
		font-size: 1.1em;
		font-weight: bold;		
		color: #c56f48;
	}
	h6{
		line-height: 1.7;
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
                                            <div class="main_home wow fadeInUp" data-wow-duration="500ms">
                                                		<!-- 멘트만 바꿔주세용</p> -->
                                                <h3>Team Information</h3>
                                                <h1>${boardVo.tmName}팀<br>정보입니다.</h1>
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

			<div id="teamInfo">
			 <div class="circle" >
	           <a href="${pageContext.request.contextPath}/uploads/${boardVo.tmAtchName}" class="portfolio-img">
	           	<img style='width:200px;height:200px' alt="No Image" src="${pageContext.request.contextPath}/uploads/${boardVo.tmAtchName}" />
	           </a>
	         </div>			
         		
	         	<h2>${boardVo.tmName} <span id="teamOdds"> ${boardVo.sumPlayed}전 ${boardVo.sumWin}승 ${boardVo.sumLose}패 ${boardVo.sumDraw}무 </span></h2>
	         	<h4>${boardVo.memName} (주장)</h4>
	         	<h4>창단일 <span> ${boardVo.tmRegDate}</span></h4>
	         	<div id="content1">
	          	<h5 class="title2">팀원 </h5>
	          	<h5> ${boardVo.tmMem}</span></h5>         	
	         	</div>
	         	<div id="content2">
	         		<h5 class="title2">command</h5>
	         		<h5> ${boardVo.tmContent}</h5>
	         	</div>
	         	<a href="javascript:history.back()" class="btn btn-lg">
					<span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>&nbsp;뒤로가기
				</a>
         </div>
		</div>
	</div>
	<!-- container -->
	<%@ include file="/WEB-INF/inc/footer.jsp" %>
	<%@ include file="/WEB-INF/inc/footer2.jsp"%>
</body>
</html>






