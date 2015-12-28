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
	$(".menu4 .top_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/top/topmenu_attend_on.gif");
	$(".menu4 .aside_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/aside/smenu_attend_on.gif");
});
</script>
</head>

<body>
<div id="wrap">
<div id="header"><jsp:include page="../../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
	<!-- 강의출결목록 -->
	<h1>강의출결목록</h1>
	<br>
	<!-- 카테고리 검색 -->
	<table>
	<tr>
		<td>학기</td>
		<td>
			<select>
				<option>2013년도 1학기</option>
				<option>2013년도 2학기</option>
				<option>2014년도 1학기</option>
			</select>
		</td>
		<td>기간</td>
		<td>
			<input type="text" size="7">
			 ~ 
			<input type="text" size="7">
		</td>
	</tr>
	<tr>
		<td>단과</td>
		<td>
			<select>
				<option>단과명</option>
			</select>
		</td>
		<td>학과</td>
		<td>
			<select>
				<option>학과명</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>교수</td>
		<td>
			<select>
				<option>교수명</option>
			</select>
		</td>
		<td>강의형태</td>
		<td>
			<select>
				<option>전체</option>
				<option>정상</option>
				<option>휴강</option>
				<option>보강</option>
			</select>
		</td>
	</tr>
	</table>
	<!-- 검색 -->
	<br>
	<span>[총 건]</span>
	<br>
	<table>
	<thead>
	<tr>
		<td>No</td>
		<td>강의일시</td>
		<td>학과</td>
		<td>강의명</td>
		<td>교수</td>
		<td>수강인원</td>
		<td>상태</td>
	</tr>
	</thead>
	<tbody>	
	<tr>
		<td>No value</td>
		<td><a href="/muniv/attend/class_attend_view">강의일시 value</a></td>
		<td>학과 value</td>
		<td>강의명 value</td>
		<td>교수 value</td>
		<td>수강인원 value</td>
		<td>상태 value</td>
	</tr>
	</tbody>
	</table>
	<br>
	<!-- 페이징 -->
	1 2 3 4 5 6
	<!-- //페이징 -->
	<br>
	<button>목록</button>
	
	<!-- 검색 -->
	<table>
	<tr>
		<td>
			<select>
				<option>강의명</option>
				<option>교수명</option>
				<option>학과명</option>
			</select>
		</td>
		<td><input type="text" size="20"></td>
		<td>검색</td>
	</tr>
	</table>	
	<!-- //검색 -->	

	<!-- //강의출결목록조회 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

