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
<!-- 학생 강의출결 상세정보 -->
<h1>강의출결상세정보</h1>
<div>
<!-- 강의기본정보 -->
	<table>
	<tr>
		<td>강의명</td>
		<td>강의명 value</td>
	</tr>
	<tr>
		<td>강의일시</td>
		<td>강의일시 value</td>
	</tr>
	<tr>
		<td>교수명</td>
		<td>교수명 value</td>
	</tr>
	<tr>
		<td>개설학과</td>
		<td>개설학과 value</td>
	</tr>
	<tr>
		<td>강의전</td>
		<td>강의전 value (5건)</td>
	</tr>
	<tr>
		<td>출석</td>
		<td>출석 value</td>
	</tr>
	<tr>
		<td>지각</td>
		<td>지각 value</td>
	</tr>
	<tr>
		<td>결석</td>
		<td>결석 value</td>
	</tr>
	</table>
<!-- //강의기본정보 -->
	<br>
	<button>목록</button>
	<br>

<!-- 출결정보 -->
	<table>
	<tr>
		<td>강의일시</td>
	</tr>
	<tr>
		<td>강의형태</td>
	</tr>
	<tr>
		<td>강의상태</td>
	</tr>
	<tr>
		<td>출결상태</td>
	</tr>
	</table>

<!-- //출결정보 -->

</div>
<!-- //학생 강의출결 상세정보 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

