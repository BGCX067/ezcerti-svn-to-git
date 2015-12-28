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
	<!-- 학교정보조회 -->
	<div class="titlebg">
	  <table width="670" border="0" cellpadding="0" cellspacing="0">
	    <tr>
	      <td width="320" height="75" align="left" valign="bottom"><img src="/resources/images/admin/sub_basics_title_01.png"  alt="학교정보타이틀" /></td>
	      <td width="340" align="right" valign="bottom"><img src="/resources/images/admin/home_icon.png" width="22" height="12" alt="홈아이콘" /> &nbsp;기초정보&nbsp;<img src="/resources/images/admin/small_arrow_icon.png" width="4" height="12" alt="화살표" /> &nbsp;학교정보 </td>
	    </tr>
	  </table>
	</div>
	<table width="699" border="0" cellpadding="0" cellspacing="0" class="infobg">
	  <tr>
	    <td align="center" valign="middle"><table width="610" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="155" height="30" class="grayhd">학교코드</td>
	        <td class="deepgraytd" >${univ.univ_cd }</td>
	      </tr>
	      <tr>
	        <td width="155" height="30" class="deepgrayhd">학교명</td>
	        <td class="graytd">${univ.univ_name }</td>
	      </tr>
	      <tr>
	        <td width="155" height="30" class="grayhd">학기명</td>
	        <td class="deepgraytd">${univ.term_name }</td>
	      </tr>
	      <tr>
	        <td width="155" height="30" class="deepgrayhd">개강일</td>
	        <td class="graytd">${univ.term_start_date }</td>
	      </tr>
	      <tr>
	        <td width="155" height="30" class="grayhd">종강일</td>
	        <td class="deepgraytd">${univ.term_end_date }</td>
	      </tr>
	      <tr>
	        <td width="155" height="30" class="deepgrayhd">출결정보상태</td>
	        <td class="graytd">${univ.attend_sts_cd }</td>
	      </tr>
	    </table></td>
	  </tr>
	</table>	
	<!-- //학교정보조회 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

