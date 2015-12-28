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
	$(".menu1 .top_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/top/topmenu_prof_on.gif");
	$(".menu1 .aside_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/aside/smenu_prof_on.gif");
});
</script>
</head>

<body>
<div id="wrap">
<div id="header"><jsp:include page="../../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
	<!-- 교수상세정보조회 -->
	<h1>교수상세정보조회</h1>
	<br>
	<!-- 교수기본정보 -->
	<table>
	<tr>
		<td>교수코드</td>
		<td>교수코드 value</td>
	</tr>
	<tr>
		<td>단과</td>
		<td>단과 value</td>
	</tr>
	<tr>
		<td>학과</td>
		<td>학과 value</td>
	</tr>
	<tr>
		<td>교수명</td>
		<td>교수명 value</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>연락처 value</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>이메일 value</td>
	</tr>
	<tr>
		<td>상태</td>
		<td>재식 value</td>
	</tr>
	<tr>
		<td>등록일</td>
		<td>등록일 value</td>
	</tr>
	<tr>
		<td><button>목록</button></td>
		<td><a href="/muniv/prof/prof_edit"><button>수정</button></a></td>
	</tr>
	</table>
	<!-- //교수기본정보 -->
	<br>
	<!-- 교수별 강의현황 -->
	<h1>교수별 강의현황</h1>
	<table>
	<thead>
	<tr>
		<td>No</td>
		<td>과목코드</td>
		<td>강의명</td>
		<td>요일</td>
		<td>교시</td>
		<td>수강인원</td>
	</tr>
	</thead>
	<tbody>	
	<tr>
		<td>No value</td>
		<td>과목코드 value</td>
		<td>강의명 value</td>
		<td>요일 value</td>
		<td>교시 value</td>
		<td>수강인원 value</td>
	</tr>
	</tbody>
	</table>
	<br>
	<!-- //교수별 강의현황 -->
	<!-- //교수상세정보조회 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

