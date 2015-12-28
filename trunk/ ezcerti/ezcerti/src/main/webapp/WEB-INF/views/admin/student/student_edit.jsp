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
	<!-- 학생정보변경 -->
	<h1>학생정보변경</h1>
	<br>
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
		<td>학년</td>
		<td>
			<select>
				<option>1학년</option>
				<option>2학년</option>
				<option>3학년</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>학생명</td>
		<td>학생명 value</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td><input type="text" value="010-4444-4444"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" value="abcdefghi@dju.ac.kr"></td>
	</tr>
	<tr>
		<td>국적</td>
		<td>
			<select>
				<option>내국인</option>
				<option>외국인</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>상태</td>
		<td>상태 value</td>
	</tr>
	<tr>
		<td>등록일</td>
		<td>등록일 value</td>
	</tr>
	<tr>
		<td><button>비밀번호초기화</button></td>
		<td><button>취소</button></td>
		<td><a href="/muniv/prof/prof_edit"><button>수정완료</button></a></td>
	</tr>
	</table>
	<!-- //학생정보변경 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

