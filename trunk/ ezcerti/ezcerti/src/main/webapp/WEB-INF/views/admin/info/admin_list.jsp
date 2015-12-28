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
	$(".menu6 .top_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/top/topmenu_admin_on.gif");
	$(".menu6 .aside_menu_img").removeAttr("onmouseout").attr("src", "/resources/images/aside/smenu_admin_on.gif");
	$("#in_topmenu6").css("display","block");
	$("#in_menu6").css("display","block");
});
function paging(currentPage){
	var f = document.getElementById('searchForm');
	f.method = 'get';
	f.currentPage.value = currentPage;
	f.action = '/muniv/info/admin_list';
	f.submit();
}
</script>
</head>

<body>
<div id="wrap">
<div id="header"><jsp:include page="../../header.jsp"></jsp:include></div>
<div id="article">
<div id="contents">
	<!-- 관리자목록 -->
	<c:set var="pb" value="${pageBean }"/>
	<div class="titlebg">
	  <table width="670" border="0" cellpadding="0" cellspacing="0" >
	    <tr>
	      <td width="320" height="75" align="left" valign="bottom"><img src="/resources/images/admin/sub_admin_title_01.png"  alt="강의일정보타이틀" /></td>
	      <td width="340" align="right" valign="bottom"><img src="/resources/images/admin/home_icon.png" width="22" height="12" alt="홈아이콘" /> &nbsp;관리자 &nbsp;<img src="/resources/images/admin/small_arrow_icon.png" width="4" height="12" alt="화살표" /> &nbsp;관리자목록</td>
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
	        <td width="52" align="center" valign="middle" class="tdgray">NO</td>
	        <td width="137" align="center" valign="middle" class="tdgray">소속</td>
	        <td width="98" align="center" valign="middle" class="tdgray">사번</td>
	        <td width="97" align="center" valign="middle" class="tdgray">관리자명</td>
	        <td width="122" align="center" valign="middle" class="tdgray">연락처</td>
	        <td width="102" align="center" valign="middle" class="tdgray">권한</td>
	        <td width="82" align="center" valign="middle" class="tdgraynone">상태</td>
	      </tr>
	      <c:forEach var="b" items="${pb.list}">
	      <tr>
	        <td class="tdwhite">${b.row_no }</td>
	        <td class="tdwhite">${b.dept_cd }</td>
	        <td class="tdwhite">${b.admin_no }</td>
	        <td class="tdgraybold"><a href="/muniv/info/admin_view">${b.admin_name }</a></td>
	        <td class="tdwhite">${b.hp_no }</td>
	        <td class="tdwhite">${b.admin_level_cd }</td>
	        <td class="tdwhitenone">${b.admin_sts_cd }</td>
	      </tr>
	      </c:forEach>
	    </table></td>
	  </tr>
	  <tr>
	    <td height="38" align="right" valign="bottom" ><a href="/muniv/info/admin_member_join"><img src="/resources/images/admin/register_button.png" width="61" height="27" alt="등록버튼" /></a></td>
	  </tr>
	  <!-- 페이징 -->
	  <tr>
	    <td height="40" align="center" valign="top" class="grayfont"><my:pageGroup/></td>
	  </tr>
	  <!-- //페이징 -->
	  	<!-- 검색 -->
	  <tr>
	    <td align="center" valign="middle" class="searchbg"><table width="390" border="0" cellpadding="0" cellspacing="0">
		<form id="searchForm" method="get" action="/muniv/info/admin_list" autocomplete="off">
        <input type="hidden" id="currentPage" name="currentPage">
	      <tr>
	        <td><label for="list"></label>
	          <select id="item" name="item" size="1" class="searchlistbox" id="list">
	            <option value="name"
				<c:if test="${param.item=='name'}">
					selected
				</c:if>
				>관리자명</option>
				<option value="code"
				<c:if test="${param.item=='code'}">
					selected
				</c:if>
				>사번</option>
	          </select></td>
	        <td><label for="text"></label>
	          <input type="text" id="value" name="value" value="${param.value}" class="searchtextbox" /></td>
	        <td align="right">
	          <button style="width:80px; height:26px;border: none;"><img src="/resources/images/admin/search_button.png" width="69" height="26" alt="검색버튼" /></button>
	        </td>
	      </tr>
		  </form>
	    </table></td>
	  </tr>
	<!-- //검색 -->
	</table>

	<!-- //관리자목록 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

