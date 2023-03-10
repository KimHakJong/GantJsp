<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>GANT</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/join.js"></script>
<script>

</script>
<style>
*{box-sizing:border-box; font-family:"noto sans", sans-serif;}
body>div{margin-top:6em; margin-bottom:4em}
form>div {font-size:32px; font-weight:bold; text-align:center; margin:0px 0px 40px 0px}

form{width:600px; margin:0 auto; border:1px solid #C4C5C8; border-radius:4px;
	 padding: 60px 90px 30px 90px}
	 
span { font-size: 13px;}

label{font-size:14px; font-weight:bold; display:block;margin-top:20px}
select, input, button { height:50px; margin:10px 0px 0px 0px; 
						border-radius:4px; cursor:pointer;
						border:1px solid #C4C5C8; background-color:white}
input:focus {border:3px solid black; outline:none}
input, button {width:100%;  padding:15px 12px}
select {background:white;}

button:disabled{background:#b4b4b4; border:none}
button:enabled {opacity:0.9}
button:enabled:hover{opacity:1}

#password {margin-bottom:0px;}
#password2 {margin-top:7px}
#jumin1, #jumin2 {width:48%}
#jumin2{float:right}

#phone1, #phone2, #phone3 {width:30%}
#phone2 {float: center;}
#phone3 { float:right;}
#email, #domain {width:35%}
#domain {width:28%}
#certsend{float:right; width:30%;}

#certnum {width:63%}
#certcheck{float:right; width:35%}

#post{width:68%}
#spost{width:30%; float:right}

#address + div, #address + div + div {display:inline-block; width:49%}
#address + div > label {float:left}
#address + div + div > label{float:left}

#address + div + div {float:right}
#address + div + div > label {float:left}
#department, #position{width:100%}
select option[value=""]:disabled{
	display: none;
}

button{background-color:black; color:white}
button[type=submit]{font-weight:bold; height:60px; font-size:16px; background-color:black; color:white; border:none; outline:none}
</style>
</head>
<body>
<div>
	<form action="joincheck.net" method="post">
		<div>????????????</div>
		<label for="id">?????????</label>
			<input type="text" name="id" id="id" placeholder="????????? ??????">
			<span id="id_message"></span>
			
		<label for="password">????????????</label>
			<input type="password" name="password" id="password" placeholder="???????????? ??????">
			<span id="pass_message"></span>
			
			<input type="password" name="password2" id="password2" placeholder="???????????? ??????">
			<span id="pass2_message"></span>
			
		<label for="name">??????</label>
			<input type="text" name="name" id="name" placeholder="?????? ??????">
			<span id="name_message"></span>
			
		<label for="jumin1">????????????</label>
			<input type="text" name="jumin1" id="jumin1" placeholder="???????????? ?????????" maxlength="6">
		<b> - </b>
			<input type="password" name="jumin2" id="jumin2" placeholder="???????????? ?????????" maxLength="7">
		<span id="jumin_message"></span>
		<label for="phone1">????????? ??????</label>
			<input type="text" name="phone1" id="phone1" maxLength="3">
			<b> - </b>
			<input type="text" name="phone2" id="phone2" maxLength="4">
			<b> - </b>
			<input type="text" name="phone3" id="phone3" maxLength="4">
			<span id="phone_message"></span>
			
		<label for="email">?????????</label>
			<input type="text" name="email" id="email"> @ 
			<input type="text" name="domain" id="domain">
			<button type="button" id="certsend">???????????? ??????</button>
			<span id="email_message"></span>
			
		<label for="certnum">????????????</label>	
			<input type="text" name="certnum" id="certnum" maxlength="6">
			<button type="button" id="certcheck">???????????? ??????</button>
			<span id="cert_message"></span>
			
		<label for="post">????????????</label>
			<input type="text" name="post" id="post" readOnly maxlength="5">
			<button type="button" id="spost">?????? ??????</button>
			
		<label for="address">??????</label>
			<input type="text" name="address" id="address">
		
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
		
		<button type="submit">????????????</button>
	</form>
</div>
</body>
</html>