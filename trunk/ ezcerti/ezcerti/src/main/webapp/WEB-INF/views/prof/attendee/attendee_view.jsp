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
<!-- 교수 수강생상세보기 -->
<h1>수강생상세보기</h1>
<div>
	<!-- 수강생 기본정보 -->
	<table>
	<tr>
		<td>수강생사진</td>
	</tr>
	<tr>
		<td>학생명</td>
		<td>학생명 value</td>
		<td>학번</td>
		<td>학번 value</td>
	</tr>
	<tr>
		<td>단과</td>
		<td>단과 value</td>
		<td>학과</td>
		<td>학과 value</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>연락처 value</td>
		<td>이메일</td>
		<td>이메일 value</td>
	</tr>
	<tr>
		<td>국적</td>
		<td>국적 value</td>
		<td>상태</td>
		<td>상태 value</td>
	</tr>
	</table>
	<br>
	<button>목록</button>
	<br>
	<!-- //수강생 기본정보 -->
	
	<!-- 강의기본정보 -->
	<table>
	<tr>
		<td>강의명</td>
		<td>강의일시</td>
	</tr>
	</table>
	<!-- 강의기본정보 -->
	
	<!-- 수강생 출결정보 -->
	<table>
	<tr>
		<td>No</td>
	</tr>
	<tr>
		<td>강의일시</td>
	</tr>
	<tr>
		<td>출결상태</td>
	</tr>
	</table>
	
	<!-- //수강생 출결정보 -->
</div>
<!-- //교수 수강생목록 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

