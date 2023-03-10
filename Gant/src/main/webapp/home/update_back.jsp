<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>GANT</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" 
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<link href="css/home.css" rel="stylesheet" type="text/css">

<script src="js/update.js"></script>
<script>

</script>
<style>
*{box-sizing:border-box; font-family:"noto sans", sans-serif;}
body>div{margin-top:6em; margin-bottom:4em}
form>div {font-size:32px; font-weight:bold; text-align:center; margin:0px 0px 40px 0px}

form{width:600px; margin:0 auto; border:1px solid lightgray; border-radius:4px;
	 padding: 60px 90px 30px 90px}
	 
span { font-size: 13px;}

label{font-size:14px; font-weight:bold; display:block;margin-top:20px}
select, input, button { height:50px; margin:10px 0px 0px 0px; 
						border-radius:4px; cursor:pointer;
						border:1px solid lightgray; background-color:white}
input:focus {border:3px solid #006CFF; outline:none}
input, button {width:100%;  padding:15px 12px}
select {background:white;}

button:disabled{background:#AEAEAE; border:none}
button:enabled {opacity:0.8}
button:enabled:hover{opacity:1}

#password {margin-bottom:0px;}
#password2 {margin-top:7px}
#jumin1, #jumin2 {width:48%}
#jumin2{float:right}

#phone1, #phone2, #phone3 {width:30%}
#phone2 {float: center;}
#phone3 { float:right;}
#email, #domain {width:30%}
#domain {width:28%}
#certsend{float:right; width:35%;}

#certnum {width:63%}
#certcheck{float:right; width:35%}

#post{width:68%}
#spost{width:30%; float:right}

#address + div, #address + div + div {display:inline-block; width:49%}
#address + div > label {float:left}
#address + div + div > label{float:left}

#address + div + div {float:right}
#address + div + div > label {float:left}
#department, #position{width:100%; font-size: 18px;}
/* select option[value=""]:disabled{ */
/* display: none; */
/* } */

button{background-color:black; color:white}
button[type=submit],[type=reset]{
	display:inline-block;
	font-weight:bold; font-size:22px; color:white;
	background-color:black; 
	height:60px; width:150px;
	border:none; outline:none
	}
button[type=reset]{
	background-color:red; 
	}
button[type=submit]{
	background-color:green; 
	}

/* #menuOutline { */
/*  	border: 1px solid gray; */
/*     width: 70%; */
/*     height: 95%; */
/*     margin: 0 auto; */
/*     margin-top: 20px; */
/*     padding-top: 20px; */
/*     padding-bottom: 20px; */
 	
/* } */

.mymenu > a {
	border: 1px solid black;
    border-radius: 0px 0px 12px 12px;
    background-color: black;
    color: white;
    padding: 7px;
    padding-bottom: 0px;
    margin-right: -3px;
    font-size: x-large;
    position: relative;
    left: -20px;
    top: -15px;
}

/* .change{ */
/* 	background-color : red; */
/* 	color : black; */
/* } */

</style>
</head>
<body>

<script>
	$(function() {
// 		$(".mymenu > a").click(function() {
			
// 			$(this).attr("class", "change");
		
// 		})
		
		
// 		$(".good").click(function() {
			
// 		$(this).toggleClass("change");
		
// 		})
		
});
</script>

<header>
	<jsp:include page="header.jsp"/>
</header>

<!-- 	?????? ????????? ?????? ???????????? -->

	<div class="row">
	
		<div class="side" style="width:15%">
			<jsp:include page="left.jsp" />
		</div>
		
		<div class="main" style="width:85%;">

			<div class="mymenu">
				<a href="update.home">???????????? ??????</a>
				<a href="schedule.home">?????? ??????</a>
				<a href="myboard.home">????????? ??????</a>
			</div>
			
		  <div id="menuOutline">
			<form action="updateProcess.home" method="post" enctype="multipart/form-data">
				<div>????????????</div>
			
				
				
				<label for="id">?????????</label>
					<input type="text" name="id" id="id" value="${info.id }" readOnly>
					<span id="id_message"></span>
					
				<label for="password">????????????</label>
					<input type="password" name="password" id="password" placeholder="???????????? ??????"
							value="${info.password }">
					<span id="pass_message"></span>
					
					<input type="password" name="password2" id="password2" placeholder="???????????? ??????"
							value="${info.password }">
					<span id="pass2_message"></span>
					
				<label for="name">??????</label>
					<input type="text" name="name" id="name" 
							value="${info.name }" readOnly>
					<span id="name_message"></span>
					
				<label for="jumin1">????????????</label>
					<input type="text" name="jumin1" id="jumin1" 
							value="${info.jumin.substring(0,6)}" placeholder="???????????? ?????????" readOnly>
				<b> - </b>
					<input type="text" name="jumin2" id="jumin2" 
							value="${info.jumin.substring(7)}" placeholder="???????????? ?????????" readOnly>
				<span id="jumin_message"></span>
				<label for="phone1">????????? ??????</label>
					<input type="text" name="phone1" id="phone1" maxLength="3"
						value="${info.phone_num.substring(0,3) }">
					<b> - </b>
					<input type="text" name="phone2" id="phone2" maxLength="4"
						value="${info.phone_num.substring(4,8) }">
					<b> - </b>
					<input type="text" name="phone3" id="phone3" maxLength="4"
						value="${info.phone_num.substring(9,13) }">
					<span id="phone_message"></span>
					
				<label for="email">?????????</label>
					<input type="text" name="email" id="email" 
							value='${info.email.split("@")[0]}'> @ 
					<input type="text" name="domain" id="domain"
							value='${info.email.split("@")[1] }'>
					<button type="button" id="certsend">???????????? ??????</button>
					<span id="email_message"></span>
					
				<label for="certnum">????????????</label>	
					<input type="text" name="certnum" id="certnum" maxlength="6">
					<button type="button" id="certcheck">???????????? ??????</button>
					<span id="cert_message"></span>
					
				<label for="post">????????????</label>
					<input type="text" name="post" id="post" 
							value="${info.post }" readOnly maxlength="5">
					<button type="button" id="spost">?????? ??????</button>
					
				<label for="address">??????</label>
					<input type="text" name="address" id="address"
							value="${info.address }">
				
				<div>
				<label>?????????</label>
					<select name="department" id="department" >
						<option value="" disabled selected>????????? ??????</option>
						<option value="??????">??????</option>
						<option value="?????????">?????????</option>
						<option value="?????????">?????????</option>
						<option value="?????????">?????????</option>
						<option value="?????????">?????????</option>
						<option value="?????????">?????????</option>
						<option value="?????????">?????????</option>
					</select>
				</div>
				
				<div>
				<label>??????</label>
					<select name="position" id="position" >
						<option value="" disabled selected>?????? ??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
						<option value="??????">??????</option>
					</select>
				</div>
				
				<div class="clearfix">
			      <button type=submit class="signupbtn">??????</button>
			      <button type=reset class="cancelbtn">??????</button>
				</div>
<!-- 				<button type="submit">??????</button> -->
			</form>
		  </div> <!-- end menuOutline  -->
		</div> <!-- end main -->
	</div> <!-- end row -->
	

  <footer>
	<jsp:include page="bottom.jsp"/>
  </footer>


</body>
</html>