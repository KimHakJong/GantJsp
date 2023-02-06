<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>메인 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link href="css/home.css" rel="stylesheet" type="text/css">

<style>
</style>

<script>
		
</script>

</head>

<body>
	<header>
		<jsp:include page="header.jsp" />
	</header>

	<div class="row">
		<div class="side">
			<jsp:include page="left.jsp" />
		</div>
		
		<div class="main">
			<h4>이번주 캘린더</h4>
			<div class="calendar" >
<%-- 				<jsp:include page="calendar.jsp" />  --%>
<!-- 				해당하는 페이지 가져다 놓을 예정 -->
				해당 캘린더
			</div>
			
			<br>
			<h4>전체 공지사항</h4>
			<div class="notice">
<%-- 				<jsp:include page="notice.jsp" />  --%>
<!-- 				해당하는 페이지 가져다 놓을 예정 -->
				해당 공지사항
			</div>
		</div>
	</div>


	<footer>
		<jsp:include page="bottom.jsp" />
	</footer>



</body>
</html>