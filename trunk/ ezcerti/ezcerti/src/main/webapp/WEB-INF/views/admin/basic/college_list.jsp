<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="my" uri="/my-taglib" %>
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
function paging(currentPage){
	var f = document.getElementById('searchForm');
	f.method = 'get';
	f.currentPage.value = currentPage;
	f.action = '/muniv/basic/college_list';
	f.submit();
}
</script>
</head>

<body>
<div id="wrap">
<div id="header"><jsp:include page="../../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
	<!-- 단과정보조회 -->
	<c:set var="pb" value="${pageBean }"/>
	<div class="titlebg">
	  <table width="670" border="0" cellpadding="0" cellspacing="0" >
	    <tr>
	      <td width="320" height="75" align="left" valign="bottom"><img src="/resources/images/admin/sub_basics_title_02.png"  alt="단과정보타이틀" /></td>
	      <td width="340" align="right" valign="bottom"><img src="/resources/images/admin/home_icon.png" width="22" height="12" alt="홈아이콘" /> &nbsp;기초정보&nbsp;<img src="/resources/images/admin/small_arrow_icon.png" width="4" height="12" alt="화살표" /> &nbsp;단과정보 </td>
	    </tr>
	  </table>
	</div>
	<br />
	<table width="700" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td height="25" align="right" class="grayfont">[총 ${pb.allCnt }건] &nbsp;</td>
	  </tr>
	  <tr>
	    <td align="center"><table width="690" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="85" align="center" valign="middle" class="tdgray">NO</td>
	        <td width="168" align="center" valign="middle" class="tdgray">단과코드</td>
	        <td align="center" valign="middle" class="tdgray">단과명</td>
	        <td width="160" align="center" valign="middle" class="tdgraynone">등록일</td>
	      </tr>
	      <c:forEach var="b" items="${pb.list}">	
	      <tr>
	        <td class="tdwhite">${b.row_no }</td>
	        <td class="tdwhite">${b.coll_cd }</td>
	        <td class="tdwhite">${b.coll_name }</td>
	        <td class="tdwhitenone">${b.reg_date }</td>
	      </tr>
		  </c:forEach>
	    </table></td>
	  </tr>
	  	<!-- 페이징 -->
	  <tr>
	    <td height="58" align="center" class="grayfont"><my:pageGroup/></td>
	  </tr>
		<!-- //페이징 -->
	  <tr>
	  	<td>
		  <form id="searchForm">
			<input type="hidden" id="currentPage" name="currentPage">
		  </form>	
	  	</td>
	  </tr>
	</table>	
	<!-- //단과정보조회 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

