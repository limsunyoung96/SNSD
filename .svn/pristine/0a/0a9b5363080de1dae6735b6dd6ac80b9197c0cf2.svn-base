<%@page import="kr.co.soccer.login.UserVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!-- top.jsp --> 
<style>
	#nav2{
		width: 240px;
		float: right;
		position: absolute;
		right: 50px;
		top: 42px;
	}
	#nav2 li{
		width:80px;
		float: left; 
	}
	#nav2 li a{
		color:#fff;
	}
	#nav2 li a:hover{
		color:skyblue;
	}
	
	.submenu{
	position: relative;
	display:none;
	}
	
	.submenu a{
		padding-top: 15px;
	    padding-bottom: 20px;
	    text-transform: uppercase;
	    font-size: 0.875rem;
	    color: #fff;
	    display:inline-block;
	}
	
	.submenu li{
		text-align: -webkit-match-parent;
		background-color: transparent; 
	    border-color: transparent; 
	    transition: all .6s;
	    margin: 15px auto;
	    display:block;
	}
	
	.submenu>li>a:hover, .submenu>li>a:focus{
	    color:#e74c3c;
	    background: transparent;
	}
	
	.navbar-nav>li{
		width:100px;
	}
	.weather {
		color: #fff;
		margin-top: -31px;
	}
	.CurrIcon, .CurrTemp, .City {
		
		font-size: 1.375rem;
		text-align: center;
		margin-top: -8px;
	}
	.CurrTemp{
		margin-top: -22px;
	}
	.CurrIcon, .CurrGroup{
		width: 70px;
		float : left;
	}
	.CurrIcon {
		margin-right: 0.5px;
	}
	.City {
		font-size: 0.938rem;
		text-align: center;
	}
	.navbar-right {
    	margin-right: 152px;
	    margin-top: -78px;
    }
    .logoImg{
    	max-width: 18%;
    	margin-top: -14px;
    	margin-left: -60px;
    }
    #main_menu{
    	height: 96px;
    }
	
</style>
<header id="main_menu" class="header navbar-fixed-top">            
                <div class="main_menu_bg">
                    <div class="container">
                        <div class="row">
                            <div class="nave_menu">
                                <nav class="navbar navbar-default">
                                    <div class="container-fluid">
                                        <!-- Brand and toggle get grouped for better mobile display -->
                                        <div class="navbar-header">
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                            <a class="navbar-brand" href="/">
                                                <h2><a href="/"><img class="logoImg" alt="SNSD" src="${pageContext.request.contextPath}/resources/images/LOGO/LeagueLOGO_main_white.png"></a> </h2>
                                            </a>
                                        </div>

                                        <!-- Collect the nav links, forms, and other content for toggling -->



                                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                            <ul class="nav navbar-nav navbar-right menu">
                                                <li><a href="/">HOME</a></li>
                                                <li><a href="/league/leagueStatus.sc">League</a>
                                                			<ul class="submenu">
                                                					<li><a href="/apply/applyForm.sc" target="_blank">참가신청</a></li>
                                                					<li><a href="/league/leagueStatus.sc">리그현황</a></li>
                                                					<li><a href="/league/leagueList.sc">리그 리스트</a></li>
                                                					<li><a href="/league/leagueRecords.sc">명예의 전당</a></li>
                                                			</ul>
                                                </li>
                                                <li ><a href="/searchMap.sc">Info</a>
                                                			<ul class="submenu">
                                                					<li><a href="/searchMap.sc">풋살구장찾기</a></li>
                                                					<li><a href="/youtubeSearch.sc">풋살정보보기</a></li>
                                                			</ul>
                                                </li>
                                                <li><a href="/team/teamList.sc">Team</a>
                                                			<ul class="submenu">
                                                					<li><a href="/team/teamForm.sc" target="_blank">팀 만들기</a></li>
                                                					<li><a href="/team/teamList.sc">팀정보보기</a></li>
                                                					<li><a href="/free/freeList.sc">팀 홍보 게시판</a></li>
                                                			</ul>
                                                	</li>
                                                <li><a href="/notice/noticeList.sc">Board</a>
                                                			<ul class="submenu">
                                                					<li><a href="/notice/noticeList.sc">공지사항</a></li>
                                                					<li><a href="/search/searchTeamList.sc">팀 구하기</a></li>
                                                					<li><a href="/search/searchMemList.sc">팀원 구하기</a></li>
                                                			</ul>
                                                </li>
                                                
                                                <!-- <li><a href="#blog">BLOG</a></li>
                                                <li><a href="#contact">CONTACT</a></li> -->
                                            </ul>
                                          </div>
                                    </div>
                                </nav>
                            </div>	
                        </div>

                    </div>
						<div class="collapse navbar-collapse" id="nav2">
							<ul>
							<li>
								<div class = 'weather'>
								<div class = 'CurrIcon' ></div>
								<div class = 'CurrGroup'>
								<div class = 'CurrTemp'></div>
								<div class = 'City'></div>
								</div>
							</div>
							</li>
						<c:catch>
						    <c:choose>
						        <c:when test="${empty USER_INFO}">
						            <li>
						                 <li><a href="/login.sc">Login</a></li>
						             </li>
						             <li>
						                 <li><a href="/member/memberForm.sc">Join us</a></li>
						             </li>
						        </c:when>
						        <c:otherwise>
						              <li>
						                 <li><a href="/logout.sc">Logout</a></li>
						             </li>
						             <li>
						              <% 
							          	UserVO user = (UserVO)session.getAttribute("USER_INFO");
							          if(user.getUserId().equals("admin")){
							          %>
										       <li><a href="/mypage/managerMypage.sc">Manage</a></li>
									 <%
							          }else{
							          %>
						                	<li><a href="/mypage/memberMypage.sc">Mypage</a></li>
				                	 <% } %>
						             </li>
						        </c:otherwise>
						    </c:choose>
						</c:catch>


							</ul>
						</div>

                </div>
            </header>
        <script type="text/javascript">
			$('.menu').hover(function(){
				$('.submenu').slideToggle(300);
			});
			

			
			$(document).ready(function() {
				$.ajax({
					url: 'http://api.openweathermap.org/data/2.5/weather?q=${empty USER_REGION? "Seoul":USER_REGION }&appid=7338e87ee5fc6eeea7a519bcc2c4c1af&units=metric',
					dataType: 'json',
					type: 'GET',
					success: function(data){
						var $Icon = (data.weather[0].icon);
						var $Temp = Math.floor(data.main.temp) + '℃';
						var $city = data.name;
							$('.CurrIcon').append('<img src= http://openweathermap.org/img/wn/'+ $Icon + '@2x.png >');
							$('.CurrTemp').prepend($Temp);
							$('.City').append($city);
					}
				})
			});
			
			
			
			
			
			
			
			
		</script>
            