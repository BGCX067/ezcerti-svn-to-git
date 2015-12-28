<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>메뉴 :: 서비스명</title>
<script type="text/javascript" src="/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery-ui-1.10.3.custom.min.js"></script>
<link rel="stylesheet" href="/resources/css/smoothness/jquery-ui-1.10.3.custom.css">
<link rel="stylesheet" href="/resources/css/style.css">

</head>

<body>
<div id="wrap">
<div id="header"><jsp:include page="../../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
<!-- 학생 강의출결목록 -->
<h1>강의출결</h1>
<div>
	<span>학기 
	<select>
		<option>2013년 1학기</option>
	</select></span>
	
	<table>
	<tr>
		<td>No</td>
		<td>강의일시</td>
		<td>강의명</td>
		<td>교수명</td>
	</tr>
	<tr>
		<td>No value</td>
		<td>강의일시 value</td>
		<td><a href="/student/attend/attend_view">강의명 value</a></td>
		<td>교수명 value</td>
	</tr>
	</table>
</div>
<!-- //학생 강의출결목록 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

