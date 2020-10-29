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
    background: url(${pageContext.request.contextPath}/resources/images/soccerskill.jpeg) no-repeat center center;
    background-size: cover;
}


.vi {
	width: 100%;
	height : 400px;
	display: inline-block;
}

#smvi0 {
	width : 25%;
	display: inline-block;
	margin-left: 175px;
}

#smvi {
	width : 25%;
	display: inline-block;
	margin-left: 50px;
}
.tex {
	margin-left: 175px;
	font-size: 2em;
}



    </style>
    </head>
    <script type="text/javascript">
  $(window).resize(function(){resizeYoutube();});
  $(function(){resizeYoutube();});
  function resizeYoutube(){ $("iframe").each(function(){ if(
		  /^https?:\/\/www.youtube.com\/embed\/
				  /g.test($(this).attr("src")) ){
	  $(this).css("width","100%"); $(this).css("height",Math.ceil
			  ( parseInt($(this).css("width")) * 480 / 854 ) + "px");} }); }
	</script>


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
                                                <h3> 편하게 시청하라 </h3>
                                                <h1> SNSD가 추천하는 축구 영상 </h1>
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
            
            
            <br><br><br><br><br><br><br><br><br>
            <div class='vi'>
            <strong class='tex'>일반인의 개인기(스킬)</strong>
            <br><br>
            
            <div id= 'smvi0'>
            <iframe width="480" height="360" src="https://www.youtube.com/embed/AAyIeQtXmbM" 
            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            
             <div id= 'smvi'>
            <iframe width="480" height="360" src="https://www.youtube.com/embed/G7N4DH_D-Qs"
             frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
             </div>
             
              <div id= 'smvi'>
             <iframe width="480" height="360" src="https://www.youtube.com/embed/-nz0Bd2kNoo" 
             frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            </div>
            
            
            
             <br><br><br><br><br><br><br>
             <div class='vi'>
             <strong class='tex'>프로선수의 개인기(스킬)</strong>
             <br><br>
             
            <div id= 'smvi0'>
            <iframe width="480" height="360" src="https://www.youtube.com/embed/ZMGkwyt_V_Y"
             frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            
            <div id= 'smvi'>
            <iframe width="480" height="360" src="https://www.youtube.com/embed/pxIJL6hXMa8" 
            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
             </div>
             
             <div id= 'smvi'>
             <iframe width="480" height="360" src="https://www.youtube.com/embed/AnxTw1Y1UZQ" 
             frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            </div>
            
            
            
            
             <br><br><br><br><br><br><br>
             <div class='vi'>
             <strong class='tex'>K-리그 하이라이트</strong>
           <br><br>
            
              <div id= 'smvi0'>
            <iframe width="480" height="360" src="https://www.youtube.com/embed/8Bh6EZ_C2YQ" 
            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            
            <div id= 'smvi'>
            <iframe width="480" height="360" src="https://www.youtube.com/embed/7Bv9Q6z_mfE"
             frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
             </div>
             
             <div id= 'smvi'>
             <iframe width="480" height="360" src="https://www.youtube.com/embed/xuvFwfRcrLk"
              frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            </div>
            
            
            
            
            
            <br><br><br><br><br><br><br>
             <div class='vi'>
             <strong class='tex'>프리미어리그 하이라이트</strong>
           <br><br>
            
              <div id= 'smvi0'>
            <iframe width="480" height="360" src="https://www.youtube.com/embed/3Z0N2jTS3_k"
             frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            
            <div id= 'smvi'>
            <iframe width="480" height="360" src="https://www.youtube.com/embed/zKtDBtojKjQ"
             frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
             </div>
             
             <div id= 'smvi'>
             <iframe width="480" height="360" src="https://www.youtube.com/embed/VDGKZYFkhQ0"
              frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            </div>
            
           
            <br><br><br><br><br>
            
            
            
            
		<%@ include file="/WEB-INF/inc/footer.jsp" %>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
       
    </body>
</html>
