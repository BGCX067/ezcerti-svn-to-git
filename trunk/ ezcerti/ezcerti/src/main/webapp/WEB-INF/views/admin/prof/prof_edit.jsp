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
	<!-- 교수정보변경 -->
	<h1>교수정보변경</h1>
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
		<td>교수명</td>
		<td>교수명 value</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td><input type="text" value="010-3333-3333"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" value="xyz@dju.ac.kr"></td>
	</tr>
	<tr>
		<td>상태</td>
		<td>
			<select>
				<option>재직</option>
				<option>휴직</option>
				<option>퇴직</option>
			</select>
		</td>
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
	<!-- //교수정보변경 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

