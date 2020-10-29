<%@page import="kr.co.soccer.login.UserVO"%>
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
	th, tr, td{
		text-align: center;
	}
	.fontCount{
		font-size: 1.3em;
		font-weight: bold;
		color: #e74c3c;
	}
	.roundBox{
		width: 30%;
		height: 70px;
		text-align : center;
	}
	h3, .scheduleTitle{
		color: #797979;
		font-weight: bold;
		font-size: 1.1em;
	}
	.modal-body {
	    height: 194px;
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
                                    올 여름, 그대들의 가슴을 뜨겁게 달구는 넥스트 아이티 리그전
                                </div>
                                <div class="separator"></div>
                            </div><!-- End off Head_title -->
								<div>
									<table class="table table-hover">
										<th><span class="fontCount">1 </span> 라운드</th>
										<tr>
											<th>경기번호</th>
											<th>홈</th>
											<th>VS</th>
											<th>어웨이</th>
											<%
										 		UserVO user = (UserVO)session.getAttribute("USER_INFO");
										 		if(user != null && user.getUserId().equals("admin")) {
										 	%>
											<th></th>
											<%
									    		}
											%>
										</tr>
										<c:forEach var="vo" items="${schedule}" varStatus="status">
											<tr>
												<td>${vo.matchNo}</td>
												<td>${vo.homeTmNm}</td>
												<td><span>${vo.homeGf}</span>-<span> ${vo.awayGf}</span></td>
												<td>${vo.awayTmNm}</td>
												<td hidden="true">${vo.homeTm}</td>
												<td hidden="true">${vo.awayTm}</td>
												<%
										 		if(user != null && user.getUserId().equals("admin")) {
											 	%>
												<td>
													<a href="#" class="resultInputModal" 
														data-match-no="${vo.matchNo}" 
														data-tm-home-name="${vo.homeTmNm}"
														data-tm-home="${vo.homeTm}"
														data-tm-away-name="${vo.awayTmNm}"
														data-tm-away="${vo.awayTm}"
														>
														결과입력
													</a>
												</td>
												<%
										    		}
												%>
											</tr>
											<c:if test="${(vo.matchNo % 5 == 0 && vo.matchNo != 45)}" >
												<th><span class="fontCount">${(status.count)/5 + 1 }</span> 라운드</th>
												<tr>
													<th>경기번호</th>
													<th>홈</th>
													<th>VS</th>
													<th>어웨이</th>
													<th></th>
												</tr>
											</c:if>
										
											<div id="modalMatch" class="modal fade" role="dialog" tabindex="-1" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close">
																<span aria-hidden="true">&times;</span>
															</button>
															<h4 class="modal-title" id="section1Label"></h4>
														</div>
														<div class="modal-body">
															<form id="formLeague" method="get" action="leagueResult.sc">
															<input hidden="true" type="text" name="matchNo" >
															<input hidden="true" type="text" name="lgCode" value="${param.lgCode}">
															<input hidden="true" type="text" name="homeTm" id="homeTm" >
															<input hidden="true" type="text" name="awayTm" id="awayTm">
																<div class="form-group">
																	<label for="mem-id" class="control-label fontCount"><span id="matchRound"></span>라운드</label>
																</div>
																<div class="roundBox form-group col-xs-3">
																	<h3>팀 이름</h3>
																	<h3>골 득수</h3>
																	<h3>승리 팀</h3>
																</div>
																<div class="form-group roundBox col-xs-3">
																	<label for="mem-phone" id="homeTmName" class="control-label scheduleTitle"></label>
																	<input type="text" class="form-control " id="league-first" name="homeGf">
																	<select name="homeResult" class="form-control" required="required">
																		<option value="1">승</option>
																		<option value="2">무</option>
																		<option value="3">패</option>
																	</select>
																</div>
																<div class="form-group roundBox  col-xs-3">
																	<label for="mem-team" id="awayTmName" class="control-label scheduleTitle"></label>
																	<input type="text" class="form-control" id="league-second"  name="awayGf">
																	<select name="awayResult" class="form-control" required="required">
																		<option value="1">승</option>
																		<option value="2">무</option>
																		<option value="3">패</option>
																	</select>
																</div>																
														</div>
														<div class="modal-footer">
															<button type="submit" class="btn btn-lg"> 등록 </button>
<!-- 															<a  onclick="f_post()" class="btn btn-lg"> 등록 </a> -->
														</div>
														</form>
													</div>
												</div>
												<!-- /.modal-dialog -->
											</div>
											<!-- /.modal -->
										</c:forEach>
									</table>
								</div>
                        </div>
                    </div><!-- End off row -->
                </div><!-- End off container -->
            </section><!-- End off Pricing Section -->
            
            
            
		<%@ include file="/WEB-INF/inc/footer.jsp" %>
		<%@ include file="/WEB-INF/inc/footer2.jsp" %>
	<script type="text/javascript">
    $(".resultInputModal").click(function(e) {
    	e.preventDefault();
    	$this = $(this);
/*     	console.log($this.data('match-no'), $this.data('tm-home') , $this.data('tm-away') ); */
    	$frm = $('form#formLeague');
    	$('input[name=matchNo]').val($this.data('match-no'));
    	$('label#homeTmName').text($this.data('tm-home-name'));
    	$('label#awayTmName').text($this.data('tm-away-name'));
    	$('#homeTm').val($this.data('tm-home'));
    	$('#awayTm').val($this.data('tm-away'));
    	
    	$('#modalMatch').modal('show');
	}); // ".resultInputModal").click(
	
	</script>       
    	
    </body>
</html>
