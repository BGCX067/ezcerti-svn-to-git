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
<!-- 교수 개인정보관리 -->
<h1>정보변경</h1>
<div>
	<table>
	<tr>
		<td>사번</td>
		<td>사번 value</td>
	</tr>
	<tr>
		<td>단과대학</td>
		<td>단과대학 value</td>
	</tr>
	<tr>
		<td>학과명</td>
		<td>학과명 value</td>
	</tr>
	<tr>
		<td>교수명</td>
		<td>교수명 value</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" size="20"></td>
	</tr>
	<tr>
		<td>비밀번호확인</td>
		<td><input type="password" size="20"></td>
	</tr>
	<tr>
		<td>연락처</td>
		<td><input type="text" size="20" value="010-2222-2222"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" size="20" value="professor@dju.ac.kr"></td>
	</tr>
	<tr>
		<td>국적</td>
		<td>국적 value</td>
	</tr>
	<tr>
		<td>상태</td>
		<td>상태 value</td>
	</tr>
	<tr>
		<td>
			<button>취소</button>
			<button>변경완료</button>
		</td>
	</tr>
	</table>
</div>
<!-- //교수 개인정보관리 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

