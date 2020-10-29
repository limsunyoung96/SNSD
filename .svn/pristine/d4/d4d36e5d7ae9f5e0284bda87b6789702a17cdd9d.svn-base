<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/inc/header.jsp"%>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>리그 생성하기</title>
<style type="text/css">
	body{
	}
	h2{
		text-align: center;
		margin: 30px;
		font-weight: 600;
	}
	
	.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td{
		padding: 30px;
		font-size:1.1em;
		text-align:center;
	}
	
	select{
		font-size : 1.2em;
	}
	
	#btnL{
		width:150px;
		margin: 0 auto;	
	}
	
	button{
		display:inline-block;
		bor
	}
</style>
<body>
	<h2>리그 개최하기</h2>
	<form modelAttribute="boardVO" id="formleague">
		<table class="table row">
			<tr>
				<th class="col-xs-3">리그코드</th>
				<td class="col-xs-5"><input type="text" class="input-lg form-control" name="lgCode" placeholder="A0123" id="leagueCode">
					<button onclick="randomCode()">자동생성</button>
					<button onclick="checkCode()">중복확인</button></td>
			</tr>
			<tr>
				<th>리그이름</th>
				<td><input type="text" class="input-lg form-control" placeholder="넥스트아이티 배 리그" name="lgName" ></td>
			</tr>
			<tr>
				<th>시작날짜</th>
				<td><input type="date" class="input-lg form-control" name="startDate" ></td>
			</tr>
			<tr>
				<th>참여 팀</th>
				<td>
				<select name="teamCount" class="form-control input-lg" required="required">
								<option value="">-- 갯수선택 --</option>
								<c:forEach items="${joinTeamList}" var="code">
									<option value="${code.commCode}">${code.commName}명</option>
								</c:forEach>
				</select>
				</td>
			</tr>
			<tr>
				<th>개최지역</th>
				<td>
				<select name="lgRegion" class="form-control input-lg" required="required">
								<option value="">-- 지역선택 --</option>
								<c:forEach items="${regionList}" var="code">
									<option value="${code.commCode}">${code.commName}</option>
								</c:forEach>
				</select>
				</td>
			</tr>
		</table>
		<div id="btnL"><a class="btn btn-lg " onclick="popupSubmit()">리그생성</a></div>
		<!-- <div id="btnL"><button type="submit" class="btn btn-lg">리그생성</button></div> -->
	</form>
	
	<script>
	var leagues=[
		
		<c:forEach items="${leagues}" var="code">
			"${code.lgCode}",
		</c:forEach>
		""
		];
	
	/* 리그 코드 랜덤으로 만들어주는 함수 */
		function randomCode(){
			var text = "";
			var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			
			for( var i=0; i < 2; i++ )
				text += possible.charAt(Math.floor(Math.random() * possible.length));
			for( var i=0; i < 3; i++){
				text += Math.round(Math.random()*(8)+1);				
			}
			document.getElementById("leagueCode").value = text;
		}
		
	/* 리그 코드 중복 체크하는 함수 */
		function checkCode(){
		
		
			var leagueCode = document.getElementById("leagueCode").value;
			var v_check = false;
			for(var i=0; i<leagues.length; i++){
				if(leagues[i] == leagueCode){
					v_check = true;
					break;
				}
			}
			if(!v_check){ //중복 확인후 넣기 
				document.getElementById("leagueCode").value = leagueCode;
				// legues[legues.length] = leagueCode; 
			}else{
				alert("중복됩니다");
				document.getElementById("leagueCode").value = "";
			}
		}
	
		function popupSubmit() {
			var frm = document.forms['formleague']; //폼 name
			 console.log(frm);
			 frm.action = "leagueRegist.sc";
			 frm.target = "managerMypage";
			 frm.method = "post";
			 frm.submit();
			 self.close();
		}
	</script>
</body>
</html>