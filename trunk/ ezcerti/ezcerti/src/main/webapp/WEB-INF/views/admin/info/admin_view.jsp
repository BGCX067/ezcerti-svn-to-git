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
	$(".menu6 .top_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/top/topmenu_admin_on.gif");
	$(".menu6 .aside_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/aside/smenu_admin_on.gif");
	$("#in_topmenu6").css("display","block");
	$("#in_menu6").css("display","block");
});
</script>
</head>

<body>
<div id="wrap">
<div id="header"><jsp:include page="../../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
	<!-- 관리자 상세정보/수정 -->
	
	<table>
	<tr>
		<td>소속</td>
		<td>
			<select>
				<option>단과</option>
			</select>
			
			<select>
				<option>학과</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>사번</td>
		<td>사번내용</td>
	</tr>
	<tr>
		<td>관리자명</td>
		<td>관리자명내용</td>
	</tr>
	<tr>
		<td>휴대전화</td>
		<td><input type="text" value="010-2222-2222"></td>
	</tr>
	<tr>
		<td>권한</td>
		<td>권한내용</td>
	</tr>
	<tr>
		<td>상태</td>
		<td>상태내용</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password"></td>
	</tr>
	<tr>
		<td>비밀번호확인</td>
		<td><input type="password"></td>
	</tr>
	<tr>
		<td>등록일</td>
		<td>등록일내용</td>
	</tr>
	</table>
	<br>
	<table>
	<tr>
		<td>
			<button type="button">목록</button>
		</td>
		<td>
			<button type="button">수정완료</button>
		</td>
		<td>
			<button type="button">삭제</button>
		</td>
	</tr>
	</table>	
	<br>

	<!-- //관리자 상세정보/수정 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

