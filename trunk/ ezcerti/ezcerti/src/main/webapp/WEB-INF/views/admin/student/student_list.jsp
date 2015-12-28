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
	$(".menu2 .top_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/top/topmenu_student_on.gif");
	$(".menu2 .aside_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/aside/smenu_student_on.gif");
});
</script>
</head>

<body>
<div id="wrap">
<div id="header"><jsp:include page="../../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
	<!-- 학생목록조회 -->
	<h1>학생목록</h1>
	<br>
	<!-- 단과/학과별 카테고리 검색 -->
	<table>
	<tr>
		<td>단과대학
			<select>
				<option>단과대학명</option>
			</select>
		</td>
		<td>학과
			<select>
				<option>학과명</option>
			</select>
		</td>
		<td><button>조회</button></td>
	</tr>
	</table>
	<!-- //단과/학과별 카테고리 검색 -->
	<br>
	<span>[총 건]</span>
	<br>
	<table>
	<thead>
	<tr>
		<td>No</td>
		<td>단과</td>
		<td>학과</td>
		<td>학년</td>
		<td>학번</td>
		<td>학생명</td>
		<td>연락처</td>
		<td>국적</td>
		<td>상태</td>
	</tr>
	</thead>
	<tbody>	
	<tr>
		<td>No value</td>
		<td>단과 value</td>
		<td>학과 value</td>
		<td>학년 value</td>
		<td><a href="/muniv/student/student_view">학번 value</a></td>
		<td><a href="/muniv/student/student_view">학생명 value</a></td>
		<td>연락처 value</td>
		<td>국적 value</td>
		<td>상태 value</td>
	</tr>
	</tbody>
	</table>
	<br>
	<!-- 페이징 -->
	1 2 3 4 5 6
	<!-- //페이징 -->
	
	<!-- 검색 -->
	<table>
	<tr>
		<td>
			<select>
				<option>학생명</option>
				<option>학번</option>
			</select>
		</td>
		<td>
			<input type="text" size="20">
		</td>
		<td>
			<button>검색</button>
		</td>
	</tr>
	</table>
	<!-- //검색 -->
	

	<!-- //학생목록조회 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

