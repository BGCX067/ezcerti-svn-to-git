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
	$(".menu5 .top_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/top/topmenu_basic_on.gif");
	$(".menu5 .aside_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/aside/smenu_basic_on.gif");
	$("#in_topmenu5").css("display","block");
	$("#in_menu5").css("display","block");
});
</script>
</head>

<body>
<div id="wrap">
<div id="header"><jsp:include page="../../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
	<!-- 교시정보조회 -->
	<div class="titlebg">
	  <table width="670" border="0" cellpadding="0" cellspacing="0" >
	    <tr>
	      <td width="320" height="75" align="left" valign="bottom"><img src="/resources/images/admin/sub_basics_title_06.png"  alt="고시정보타이틀" /></td>
	      <td width="340" align="right" valign="bottom"><img src="/resources/images/admin/home_icon.png" width="22" height="12" alt="홈아이콘" /> &nbsp;기초정보&nbsp;<img src="/resources/images/admin/small_arrow_icon.png" width="4" height="12" alt="화살표" /> &nbsp;고시정보 </td>
	    </tr>
	  </table>
	</div>
	<br />
	
	
	<table width="700" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td align="center"><table width="690" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="167" align="center" valign="middle" class="tdgray">교시명</td>
	        <td width="152" align="center" valign="middle" class="tdgray">시작시간</td>
	        <td width="157" align="center" valign="middle" class="tdgray">종료시간</td>
	        <td width="140" align="center" valign="middle" class="tdgraynone">등록일</td>
	      </tr>
	      <c:forEach var="b" items="${classhour}">
	      <tr>
	        <td class="tdwhite">${b.classhour_name }</td>
	        <td class="tdwhite">${b.classhour_start_time }</td>
	        <td class="tdwhite">${b.classhour_end_time }</td>
	        <td class="tdwhitenone">${b.reg_date }</td>
	      </tr>
	      </c:forEach>
	    </table></td>
	  </tr>
	</table>

	<!-- //교시정보조회 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

