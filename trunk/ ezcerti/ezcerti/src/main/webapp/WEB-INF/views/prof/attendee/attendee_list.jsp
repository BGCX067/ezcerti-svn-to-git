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
<!-- 교수 수강생목록 -->
<h1>수강생목록</h1>
<div>
	<table>
	<tr>
		<td>학기</td>
		<td>
			<select>
				<option>2013년 1학기</option>
			</select>
		</td>
		<td>강의</td>
		<td>
			<select>
				<option>이슬람문화와 예술</option>
			</select>
		</td>
	</tr>
	</table>
	<br>
	[총 건]
	<table>
	<tr>
		<td>No</td>
		<td>학과명</td>
		<td>학년</td>
		<td>학번</td>
		<td>이름</td>
		<td>연락처</td>
		<td>국적</td>
		<td>상태</td>
	</tr>
	<tr>
		<td>No value</td>
		<td>학과명 value</td>
		<td>학년 value</td>
		<td>학번 value</td>
		<td><a href="/prof/attendee/attendee_view">이름 value</a></td>
		<td>연락처 value</td>
		<td>국적 value</td>
		<td>상태 value</td>
	</tr>
	</table>
	<!-- 페이징 -->
	1 2 3 4 5 6 7 8 9 10
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
		<td><input type="text" size="20"></td>
		<td><button>검색</button></td>
	</tr>
	</table>
	<!-- //검색 -->
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

