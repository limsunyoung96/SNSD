<%@page import="kr.co.soccer.login.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html lang="ko">
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<script language="javascript"> 
	$(document).ready(function() {
		$("#leagueSec1 table tr[data-logo]").mouseover(function(e) {
			//console.log($(this).data('team-name'));
			$this = $(this);
			$("#leagueSec2 .circle").html("<img src='" + getContextPath() +"/uploads/"+ $this.data("logo")+"' width='400' align='center' alt='No Image'>");
			$("#leagueSec2 h2").text($this.data('team-name'));
			$("#leagueSec2 #leader").html($this.data('mem-name') + " <small>" + $this.data('mem-id') + "</small> (주장)");
			$("#leagueSec2 h4 span").text($this.data('reg-date'));
			$("#leagueSec2 #content1 #tmMems").text($this.data('team-mem'));
			$("#leagueSec2 #btn").html("<input id='tmViewBtn' type='button' value='팀 보러가기' class='btn btn-lg'>");
			document.getElementById("tmViewBtn").addEventListener("click", function f_click(){
				location.href="/team/teamView.sc?tmId=" + $this.data('team-id');
			}); 
		});//#leagueSec1 table tr").mouseover
		
		setTime();
	});//document).ready
	
	function getContextPath() {
		var hostIndex = location.href.indexOf( location.host ) + location.host.length;
		return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
	}
	
	function setTime() {
		var today = new Date();
		var leagueDate = '${league.startDate}'.split(" ");
		var leagueStart = leagueDate[0].split("-");
		var leagueStartDate = new Date(leagueStart[0], leagueStart[1] - 1, leagueStart[2]);
		var remainDay = leagueStartDate - today;
		// leagueStart[0]: 년, leagueStart[1]: 월, leagueStart[2]: 일

		var dDay = Math.floor((remainDay) / (60 * 1000 * 60 * 24));

		var hours = checkTime(Math.floor((remainDay % (1000 * 60 * 60 * 24))/ (1000 * 60 * 60)));
		var miniutes = checkTime(Math.floor((remainDay % (1000 * 60 * 60))/ (1000 * 60)));
		var seconds = checkTime(Math.floor((remainDay % (1000 * 60)) / 1000));
		$('#remainTime').html("<strong>D-day</strong>  " + dDay + "일 " + hours + "시간" + miniutes + "분" + seconds + "초")
		// document.getElementById("remainTime").innerHTML = "<strong>D-day</strong>  " + dDay + "일 " + hours + "시간" + miniutes + "분" + seconds + "초";
		var t = setTimeout(setTime, 500);
	}
	function checkTime(i) {
		if (i < 10) {
			i = "0" + i; // 숫자가 10보다 작을 경우 앞에 0을 붙여줌
		}
		return i;
	}
</script>
	<title>Social Network Soccer Dreaming</title>
	<style>
	#leagueSec1{
		width:40%;
		height:700px;
		float : right;
		padding : 70px 0;
		text-align:center;
	}
	td,th{
		text-align:center;
	}
	#leagueSec2{
		width:60%;
		height:700px;
		float:left;
		text-align:center;
	}
	.circle {
		width:300px; height:300px; border-radius:200px; margin:0 auto; overflow:hidden;
	}
	 .circle img {
		height:auto; width:200px;
	}
	#content1{
		width: auto;
		height: 120px;
	}
	#remainTime{
	font-size: 35px;
	color: yellow;
	font-weight: bold; 
	/* text-decoration: underline; */
	}
	#leagueReady{
	font-size: 35px;
	color: yellow;
	font-weight: bold; 
	}
	.img{
	width:480px;
	height:480px;
	}
	</style>
    </head> 
    <!-- onload="setTime()" -->
    <body  data-spy="scroll" data-target=".navbar-collapse">
        <div class='preloader'><div class='loaded'>&nbsp;</div></div>
        <div class="culmn">
        <%@ include file="/WEB-INF/inc/top.jsp" %>
            
			<!--home Section -->
            <section id="home" class="home">
                <div class="overlay">
                    <div class="home_skew_border">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    <div class="main_home_slider text-center">
                                        <div class="single_home_slider">
                                            <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                               <h3>2020 가을, 당신들의 가슴을 뜨겁게 달굴<br><br><strong style="font-size: 40px"> ${league.lgName} </strong></h3><br>
                                            		<c:if test="${empty league}">
                                            			<h4 id="leagueReady" > 리그는 개최 준비중... </h4>
                                            		</c:if>
                                            		
                                            		<c:if test="${not empty league}">
	                                            		<h4 id="remainTime"> </h4>
	                                                <div class="separator"></div>
	                                                <div class="home_btn">
                                                    		<a href="/apply/applyForm.sc" class="btn btn-lg m_t_10">
	                                                    		<span class="glyphicon glyphicon-pencil" aria-hidden="true">&nbsp;참가 신청하러 가기
                                                    		</a>
	                                                </div>
                                            		</c:if>
                                                
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
                                <h2>LEAGUE IN PROGRESS</h2>
                                <div class="subtitle">
                                    올 여름, 그대들의 가슴을 뜨겁게 달구는 ${thisLeague.lgName} 리그전
                                </div>
                                <div class="separator"></div>
                            </div><!-- End off Head_title -->
								<div id="leagueSec1">
									<table class="table table-hover">
										<tr>
											<th>순위</th>
											<th>팀 이름</th>
											<th>승점</th>
										</tr>
										<c:forEach var="result" items="${status}">
										<tr data-logo="${result.tmAtachName}" 
											 data-team-name="${result.tmNm}"
											 data-team-id="${result.tmId}"
										 	 data-reg-date="${result.tmRegDate}"
											 data-team-mem="${result.tmMem}"
											 data-mem-id="${result.memId}"
											 data-mem-name="${result.memName}"
										>
											<td>${result.rank}</td>
											<td>${result.tmNm}</td>
											<td>${result.rsltPoint}</td>
										</tr>
										</c:forEach>
									</table>
									<input type="button" onclick="location.href='/league/leagueStatus.sc'" value="현황 자세히 보러가기" class="btn btn-lg">
								</div>
								<div id="leagueSec2">
									<div class="circle"><img src="${pageContext.request.contextPath}/uploads/${tm.tmAtchName}" width="400" align="center" alt="No Image"></div> 
									<h2>팀 이름</h2>
					           	<h4 id="leader">주장명 <small>ID</small> (주장)</h4>
					           	<h4 id="regDate">창단일 <span> Date </span></h4>
					           	<div id="content1">
						           	<h5 class="title2">팀원 </h5>
						           	<h5 id="tmMems">팀원 정보</h5>         	
					           	</div>
					           	<div id="btn"><input type="button" onclick="" value="팀 자세히보러가기" class="btn btn-lg"></div>
								</div><!-- End of leagueSec2 -->
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Pricing Section -->
            <!--feature section -->
            
            
            <div class="container-fluid">
                    <div class="row">
                        <div class="main_portfolio">
                            <div class="col-sm-12">
                                <div class="head_title text-center">
                                    <h2>OTHER WORKS</h2>
                                    <div class="subtitle">
                                        Here are some works you can do, but also thins you might interested in for enjoying soccer.
                                    </div>
                                    <div class="separator"></div>
                                </div>
                            </div>
                            
                            <div style="clear:both;"></div>  
                        </div>
                    </div>
                </div><!-- End off container --> 
            
            <section id="feature" class="feature sections" style="padding-top:0;">
                <div class="container">
                    <div class="row">
                        <div class="main_feature text-center">

                            <div class="col-sm-3" onclick="location.href='/search/searchTeamList.sc'">
                                <div class="single_feature">
                                    <div class="single_feature_icon">
                                        <i class="fa fa-clone"></i>
                                    </div>
                                    <h4>팀 구해요</h4>
                                    <div class="separator3"></div>
                                </div>
                            </div>

                            <div class="col-sm-3" onclick="location.href='/search/searchMemList.sc'">
                                <div class="single_feature">
                                    <div class="single_feature_icon">
                                        <i class="fa fa-heart-o"></i>
                                    </div>
                                    <h4>팀원 구해요</h4>
                                    <div class="separator3"></div>
                                </div>
                            </div>

                            <div class="col-sm-3" onclick="location.href='/team/teamForm.sc'">
                                <div class="single_feature">
                                    <div class="single_feature_icon">
                                        <i class="fa fa-lightbulb-o"></i>
                                    </div>
                                    <h4>팀 만들래요</h4>
                                    <div class="separator3"></div>
                                </div>
                            </div>

                            <div class="col-sm-3" onclick="location.href='/searchMap.sc'">
                                <div class="single_feature">
                                    <div class="single_feature_icon">
                                        <i class="fa fa-comments-o"></i>
                                    </div>
                                    <h4>구장 확인할래요</h4>
                                    <div class="separator3"></div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--End of container -->
            </section><!--End of feature Section -->
            
            <%@ include file="/WEB-INF/inc/footer.jsp"%>
            <%@ include file="/WEB-INF/inc/footer2.jsp"%>
     </body>
</html>
