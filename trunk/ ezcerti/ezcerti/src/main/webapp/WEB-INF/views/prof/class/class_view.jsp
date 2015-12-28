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
<!-- 교수 강의출결 상세정보 -->
<h1>강의출결상세정보</h1>
<div>
<!-- 강의기본정보 -->
	<a href="/prof/class/class_off"><button>휴강처리</button></a>
	<a href="/prof/class/class_cert"><button>강의인증</button></a>
	<br>
	<table>
	<tr>
		<td>강의일시</td>
		<td>강의명</td>
		<td>과목코드</td>
		<td>단과명</td>
		<td>학과명</td>
		<td>교수명</td>
		<td>강의형태</td>
		<td>강의상태</td>
	</tr>
	<tr>
		<td>강의일시 value</td>
		<td>강의명 value</td>
		<td>과목코드 value</td>
		<td>단과명 value</td>
		<td>학과명 value</td>
		<td>교수명 value</td>
		<td>강의형태 value</td>
		<td>강의상태 value</td>
	</tr>
	</table>
	<table>
	<tr>
		<td>총원</td>
		<td>출석</td>
		<td>결석</td>
		<td>지각</td>
		<td>휴학</td>
		<td>퇴학</td>
	</tr>
	<tr>
		<td>총원 value</td>
		<td>출석 value</td>
		<td>결석 value</td>
		<td>지각 value</td>
		<td>휴학 value</td>
		<td>퇴학 value</td>
	</tr>
	</table>
</div>

<!-- 출결 직권처리 -->
<div>
	<table>
	<tr>
		<td>사진</td>
	</tr>
	<tr>
		<td>학번</td>
	</tr>
	<tr>
		<td>이름</td>
	</tr>
	</table>
	<br>
	<button>변경완료</button>
	<button>목록</button>
</div>
<!-- //출결 직권처리 -->
<!-- //교수 강의출결상세보기 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

