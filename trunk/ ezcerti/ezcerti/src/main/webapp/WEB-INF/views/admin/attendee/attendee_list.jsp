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
	<!-- 수강생목록 -->
	<h1>수강생목록</h1>
	<br>
	<!-- 카테고리 검색 -->
	<table>
	<tr>
		<td>학기
			<select>
				<option>2013년도 1학기</option>
				<option>2013년도 2학기</option>
				<option>2014년도 1학기</option>
			</select>
		</td>
		<td>
			<select>
				<option>교수명</option>
				<option>강의명</option>
			</select>
		</td>
		<td>
			<input type="text" size="20">
		</td>
		<td><button>조회</button></td>
	</tr>
	</table>
	<!-- 검색 -->
	<br>
	<span>[총 건]</span>
	<br>
	<table>
	<thead>
	<tr>
		<td>No</td>
		<td>단과</td>
		<td>학과</td>
		<td>강의명</td>
		<td>교수명</td>
		<td>요일</td>
		<td>교시</td>
		<td>수강생보기</td>
	</tr>
	</thead>
	<tbody>	
	<tr>
		<td>No value</td>
		<td>단과 value</td>
		<td>학과 value</td>
		<td><a href="/muniv/attendee/attendee_view">강의명 value</a></td>
		<td>교수명 value</td>
		<td>요일 value</td>
		<td>교시 value</td>
		<td><a href="/muniv/attendee/attendee_view">수강생보기</a></td>
	</tr>
	</tbody>
	</table>
	<br>
	<!-- 페이징 -->
	1 2 3 4 5 6
	<!-- //페이징 -->
	<br>
	<button>목록</button>	

	<!-- //수강생목록조회 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

