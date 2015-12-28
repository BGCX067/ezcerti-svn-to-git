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
<div id="header"><jsp:include page="../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
<!-- 교수 마이페이지 -->
<!-- 오늘의 강의 -->
<h1>오늘의 강의</h1>
<div>
	<!-- 오늘의강의 nav -->
	<table>
	<tr>
		<td><button>이전</button></td>
		<td>2013-04-06(목)</td>
		<td><button>다음</button></td>
	</tr>
	</table>
	<!-- //오늘의강의 nav -->
	
	<table>
	<tr>
		<td>강의형태</td>
		<td>강의상태</td>
		<td>강의일시</td>
		<td>강의명</td>
		<td>휴강/강의인증</td>
	</tr>
	<tr>
		<td>강의형태 value</td>
		<td>강의상태 value</td>
		<td>강의일시 value</td>
		<td>강의명 value</td>
		<td>휴강/강의인증 value</td>
	</tr>
	</table>
</div>
<!-- //오늘의 강의 -->
<!-- 강의목록 -->
<h1>강의목록</h1>
<div>
	<table>
	<tr>
		<td>No</td>
		<td>강의일시</td>
		<td>과목코드</td>
		<td>강의명</td>
		<td>수강인원</td>
	</tr>
	<tr>
		<td>No value</td>
		<td>강의일시 value</td>
		<td>과목코드 value</td>
		<td>강의명 value</td>
		<td>수강인원 value</td>
	</tr>
	</table>
</div>
<!-- //강의목록 -->
	
<!-- //교수 마이페이지 -->
</div>
</div>
<div id="right"><jsp:include page="../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

