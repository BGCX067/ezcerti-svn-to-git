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
<script>
$(document).ready(function(){
	$(".menu3 .top_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/top/topmenu_attendee_on.gif");
	$(".menu3 .aside_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/aside/smenu_attendee_on.gif");
});
</script>
</head>

<body>
<div id="wrap">
<div id="header"><jsp:include page="../../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
	<!-- 학생상세정보조회 -->
	<h1>수강생상세정보</h1>
	<br>
	<!-- 강의기본정보 -->
	<table>
	<tr>
		<td>개설단과</td>
		<td>개설단과 value</td>
	</tr>
	<tr>
		<td>개설학과</td>
		<td>개설학과 value</td>
	</tr>
	<tr>
		<td>강의명</td>
		<td>강의명 value</td>
	</tr>
	<tr>
		<td>교수명</td>
		<td>교수명 value</td>
	</tr>
	<tr>
		<td>총</td>
		<td>총원 value</td>
	</tr>
	<tr>
		<td>재학</td>
		<td>재학 value</td>
	</tr>
	<tr>
		<td>휴학</td>
		<td>휴학 value</td>
	</tr>
	<tr>
		<td>퇴학</td>
		<td>퇴학 value</td>
	</tr>
	</table>
	<!-- //학생기본정보 -->
	<br>
	<!-- 수강생 목록 -->
	<h1>수강생목록</h1>
	<table>
	<thead>
	<tr>
		<td>No</td>
		<td>수강생학과</td>
		<td>학번</td>
		<td>수강생명</td>
		<td>연락처</td>
		<td>국적</td>
		<td>상태</td>
	</tr>
	</thead>
	<tbody>	
	<tr>
		<td>No</td>
		<td>수강생학과</td>
		<td><a href="/muniv/student/student_view">학번</a></td>
		<td><a href="/muniv/student/student_view">수강생명</a></td>
		<td>연락처</td>
		<td>국적</td>
		<td>상태</td>
	</tr>
	</tbody>
	</table>
	<br>
	<!-- //수강생목록 -->
	
	<!-- 페이징 -->
	1 2 3 4 5 6 7 8 9 10
	<!-- //페이징 -->
	<br>
	<button>목록</button>
	<br>
	<!-- 검색 -->
	<table>
	<tr>
		<td>
			<select>
				<option>수강생명</option>
				<option>학번</option>
			</select>
		</td>
		<td><input type="text" size="20"></td>
		<td><button>검색</button></td>
	</tr>
	</table>
	
	<!-- //검색 -->

	<!-- //수강생상세정보 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

