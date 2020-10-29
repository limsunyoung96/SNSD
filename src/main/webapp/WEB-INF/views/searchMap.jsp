<%@page import="java.io.Console"%>
<%@page import="kr.co.soccer.searchMap.mapController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>
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
#homeIMG{
    /* 원하는 메인이미지를 resources안에 images폴더에 넣은 후 이미지 변경해주세요 */
    background: url(${pageContext.request.contextPath}/resources/images/soccerfiled.jpg) no-repeat center center;
    background-size: cover;
}
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:700px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}

.weather {
	color: black;
}
.CurrIcon, .CurrTemp, .City {
	
	font-size: 1.375rem;
	text-align: center;
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
#container{
	margin:0;
	height: 700px;
	width: 100%;
}

#sec1{
	width:70%;
	height: 700px;
}
#sec2{
	width:30%;
	height: 700px;
}
#info{
	margin-top: 270px;
	
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
            <section id="homeIMG" class="home" >
                <div class="overlay">
                    <div class="home_skew_border">
                        <div class="container" id="container">
                            <div class="row">
                                <div class="col-sm-12 ">
                                    <div class="main_home_slider text-center">
                                        <div class="single_home_slider">
                                            <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                                		<!-- 멘트만 바꿔주세용</p> -->
                                                <h3>편하게 이용하라</h3>
                                                <h1>SNSD만의 구장 검색</h1>
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

		<!-- History section -->
		<section id="history" class="history sections">
			<div class="container">
				<div class="row">
					<div class="main_history">
						<div class="col-sm-6" id="sec1">
							<div class="single_history_img">
								<!-- 여기가 수정부분 -->
								<div class="map_wrap">
									<div id="map"
										style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

									<div id="menu_wrap" class="bg_white">
										<div class="option">
											<div>
												<form onsubmit="searchPlaces(); return false;">
													키워드 : <input type="text" value="대전 풋살장" id="keyword"
														size="15">
													<button type="submit">검색하기</button>
												</form>
											</div>
										</div>
										<hr>
										<ul id="placesList"></ul>
										<div id="pagination"></div>
									</div>
								</div>


								<script type="text/javascript"
									src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a9c4dc38dd6f7e14688ba5506ab42025&libraries=services"></script>
								<script>
									// 마커를 담을 배열입니다
									var markers = [];

									var mapContainer = document
											.getElementById('map'), // 지도를 표시할 div 
									mapOption = {
										center : new kakao.maps.LatLng(
												37.566826, 126.9786567), // 지도의 중심좌표
										level : 3
									// 지도의 확대 레벨
									};

									// 지도를 생성합니다    
									var map = new kakao.maps.Map(mapContainer,
											mapOption);

									// 장소 검색 객체를 생성합니다
									var ps = new kakao.maps.services.Places();

									// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
									var infowindow = new kakao.maps.InfoWindow(
											{
												zIndex : 1
											});

									// 키워드로 장소를 검색합니다
									searchPlaces();

									// 키워드 검색을 요청하는 함수입니다
									function searchPlaces() {

										var keyword = document
												.getElementById('keyword').value;

										if (!keyword.replace(/^\s+|\s+$/g, '')) {
											alert('키워드를 입력해주세요!');
											return false;
										}

										// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
										ps.keywordSearch(keyword,
												placesSearchCB);
									}

									// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
									function placesSearchCB(data, status,
											pagination) {
										if (status === kakao.maps.services.Status.OK) {

											// 정상적으로 검색이 완료됐으면
											// 검색 목록과 마커를 표출합니다
											displayPlaces(data);

											// 페이지 번호를 표출합니다
											displayPagination(pagination);

										} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

											alert('검색 결과가 존재하지 않습니다.');
											return;

										} else if (status === kakao.maps.services.Status.ERROR) {

											alert('검색 결과 중 오류가 발생했습니다.');
											return;

										}
									}

									// 검색 결과 목록과 마커를 표출하는 함수입니다
									function displayPlaces(places) {

										var listEl = document
												.getElementById('placesList'), menuEl = document
												.getElementById('menu_wrap'), fragment = document
												.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

										// 검색 결과 목록에 추가된 항목들을 제거합니다
										removeAllChildNods(listEl);

										// 지도에 표시되고 있는 마커를 제거합니다
										removeMarker();

										for (var i = 0; i < places.length; i++) {

											// 마커를 생성하고 지도에 표시합니다
											var placePosition = new kakao.maps.LatLng(
													places[i].y, places[i].x), marker = addMarker(
													placePosition, i), itemEl = getListItem(
													i, places[i]); // 검색 결과 항목 Element를 생성합니다

											// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
											// LatLngBounds 객체에 좌표를 추가합니다
											bounds.extend(placePosition);

											// 마커와 검색결과 항목에 mouseover 했을때
											// 해당 장소에 인포윈도우에 장소명을 표시합니다
											// mouseout 했을 때는 인포윈도우를 닫습니다
											(function(marker, title) {
												kakao.maps.event.addListener(
														marker, 'mouseover',
														function() {
															displayInfowindow(
																	marker,
																	title);
														});

												kakao.maps.event.addListener(
														marker, 'mouseout',
														function() {
															infowindow.close();
														});

												itemEl.onmouseover = function() {
													displayInfowindow(marker,
															title);
												};

												itemEl.onmouseout = function() {
													infowindow.close();
												};
											})(marker, places[i].place_name);

											fragment.appendChild(itemEl);
										}

										// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
										listEl.appendChild(fragment);
										menuEl.scrollTop = 0;

										// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
										map.setBounds(bounds);
									}

									// 검색결과 항목을 Element로 반환하는 함수입니다
									function getListItem(index, places) {

										var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
												+ (index + 1)
												+ '"></span>'
												+ '<div class="info">'
												+ '   <h5>'
												+ places.place_name
												+ '</h5>';

										if (places.road_address_name) {
											itemStr += '    <span>'
													+ places.road_address_name
													+ '</span>'
													+ '   <span class="jibun gray">'
													+ places.address_name
													+ '</span>';
										} else {
											itemStr += '    <span>'
													+ places.address_name
													+ '</span>';
										}

										itemStr += '  <span class="tel">'
												+ places.phone + '</span>'
												+ '</div>';

										el.innerHTML = itemStr;
										el.className = 'item';

										return el;
									}

									// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
									function addMarker(position, idx, title) {
										var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
										imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
										imgOptions = {
											spriteSize : new kakao.maps.Size(
													36, 691), // 스프라이트 이미지의 크기
											spriteOrigin : new kakao.maps.Point(
													0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
											offset : new kakao.maps.Point(13,
													37)
										// 마커 좌표에 일치시킬 이미지 내에서의 좌표
										}, markerImage = new kakao.maps.MarkerImage(
												imageSrc, imageSize, imgOptions), marker = new kakao.maps.Marker(
												{
													position : position, // 마커의 위치
													image : markerImage
												});

										marker.setMap(map); // 지도 위에 마커를 표출합니다
										markers.push(marker); // 배열에 생성된 마커를 추가합니다

										return marker;
									}

									// 지도 위에 표시되고 있는 마커를 모두 제거합니다
									function removeMarker() {
										for (var i = 0; i < markers.length; i++) {
											markers[i].setMap(null);
										}
										markers = [];
									}

									// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
									function displayPagination(pagination) {
										var paginationEl = document
												.getElementById('pagination'), fragment = document
												.createDocumentFragment(), i;

										// 기존에 추가된 페이지번호를 삭제합니다
										while (paginationEl.hasChildNodes()) {
											paginationEl
													.removeChild(paginationEl.lastChild);
										}

										for (i = 1; i <= pagination.last; i++) {
											var el = document
													.createElement('a');
											el.href = "#";
											el.innerHTML = i;

											if (i === pagination.current) {
												el.className = 'on';
											} else {
												el.onclick = (function(i) {
													return function() {
														pagination.gotoPage(i);
													}
												})(i);
											}

											fragment.appendChild(el);
										}
										paginationEl.appendChild(fragment);
									}

									// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
									// 인포윈도우에 장소명을 표시합니다
									function displayInfowindow(marker, title) {
										var content = '<div style="padding:5px;z-index:1;">'
												+ title + '</div>';

										infowindow.setContent(content);
										infowindow.open(map, marker);
									}

									// 검색결과 목록의 자식 Element를 제거하는 함수입니다
									function removeAllChildNods(el) {
										while (el.hasChildNodes()) {
											el.removeChild(el.lastChild);
										}
									}
								</script>




							</div>
						</div>

						<div class="col-sm-6" id="sec2">
							<div class="single_history_content">
								<div class="head_title">
									<h2>나와 맞는 구장 찾기</h2>
								</div>
								<p>자신의 집과 가까운 구장을 확인하고 예약하세요. 상대팀과 뜨겁게 경기를하며 좋은 추억으로 남기실 수
									있게 저희 SNSD가 도와드립니다. 또한, 공식 리그전이 열리는 날에는 리그 일정과 장소를 제공해드립니다. 아래
									리그전 정보를 클릭하여 리그전 일정 및 장소를 확인하실 수 있습니다. 리그를 관람할 사람들은 남녀노소 누구나
									무료로 관람 가능하오니 장소를 검색하여 친구, 애인, 가족, 동료들과 함께 뜨겁게 응원하세요!!</p>

								<a href="" class="btn btn-lg" id="info">리그전 정보</a>
							</div>
						</div>
					</div>
				</div>
				<!--End of row -->
			</div>
			<!--End of container -->
		</section>
		<!--End of history -->

		<%@ include file="/WEB-INF/inc/footer.jsp"%>
		<%@ include file="/WEB-INF/inc/footer2.jsp"%>
</body>
</html>
