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
<!-- 교수 강의출결목록 -->
<h1>강의출결목록</h1>
<div>
	<table>
	<tr>
		<td>학기</td>
		<td>
			<select>
				<option>2013년도 1학기</option>
			</select>
		</td>
		<td>강의명</td>
		<td>
			<select>
				<option>통계데이터베이스구축및실습(1)</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>강의일</td>
		<td>
			<input type="text" size="7">
			 ~ 
			<input type="text" size="7">
		</td>
		<td><button>검색</button></td>
	</tr>
	</table>
	<table>
	<tr>
		<td>강의형태</td>
		<td>강의상태</td>
		<td>강의일시</td>
		<td>강의명</td>
		<td>과목코드</td>
		<td>수강인원</td>
		<td>휴강처리/강의인증</td>
	</tr>
	<tr>
		<td>강의형태 value</td>
		<td>강의상태 value</td>
		<td>강의일시 value</td>
		<td><a href="/prof/class/class_view">강의명 value</a></td>
		<td>과목코드 value</td>
		<td>수강인원 value</td>
		<td>휴강처리/강의인증 value</td>
	</tr>
	<tr>
		<td><a href="/prof/class/class_add"><button>보강등록</button></a></td>
	</tr>
	</table>
	
</div>
<!-- //교수 강의출결목록 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

