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
<div id="contents">ion>
	<!-- 관리자 등록 -->
<body>
<div class="titlebg">
  <table width="670" border="0" cellpadding="0" cellspacing="0" >
    <tr>
      <td width="320" height="75" align="left" valign="bottom"><img src="/resources/images/admin/sub_admin_title_03.png"  alt="강의일정보타이틀" /></td>
      <td width="340" align="right" valign="bottom"><img src="/resources/images/admin/home_icon.png" width="22" height="12" alt="홈아이콘" /> &nbsp;관리자 &nbsp;<img src="/resources/images/admin/small_arrow_icon.png" width="4" height="12" alt="화살표" /> &nbsp;사용자등록</td>
    </tr>
  </table>
</div>

<table width="699" border="0" cellpadding="0" cellspacing="0" class="admininfobg">
  <tr>
    <td align="center" valign="middle"><table width="610" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="155" height="40" class="grayhd">소 속</td>
        <td class="deepgraytd" ><select name="list" size="1" class="searchlistbox" id="list">
          <option>단과</option>
          <option>단과내용관련</option>
        </select> <select name="list2" size="1" class="searchlistbox" id="list2">
          <option>학과</option>
          <option>학과목록값</option>
        </select></td>
      </tr>
      <tr>
        <td width="155" height="40" class="deepgrayhd">사 번</td>
        <td class="graytd"><input name="text4" type="text" class="searchtextbox" id="text4" /></td>
      </tr>
      <tr>
        <td width="155" height="40" class="grayhd">관리자명</td>
        <td class="deepgraytd"><input name="text5" type="text" class="searchtextbox" id="text5" /></td>
      </tr>
      <tr>
        <td width="155" height="40" class="deepgrayhd">휴대전화</td>
        <td class="graytd"><input name="text" type="text" class="searchtextbox" id="text" /></td>
      </tr>
      <tr>
        <td width="155" height="40" class="grayhd">권 한</td>
        <td class="deepgraytd">권한내용</td>
      </tr>
      <tr>
        <td width="155" height="40" class="deepgrayhd">상 태</td>
        <td class="graytd">상태내용</td>
      </tr>
      <tr>
        <td width="155" height="40" class="grayhd">비밀번호</td>
        <td class="deepgraytd"><input name="text2" type="password" class="searchtextbox" id="text2" /></td>
      </tr>
      <tr>
        <td width="155" height="40" class="deepgrayhd">비밀번호확인</td>
        <td class="graytd"><input name="text3" type="password" class="searchtextbox" id="text3" /></td>
      </tr>
    </table></td>
  </tr>
</table>
  <div class="aligncenter"><a href="#"><img src="/resources/images/admin/list_button.png" width="61" height="27" alt="목록버튼" /></a>&nbsp;&nbsp;<a href="#"><img src="/resources/images/admin/register_button.png" width="61" height="27" alt="삭제버튼" /></a></div>
	<!-- //관리자 등록 -->
</div>
</div>
<div id="right"><jsp:include page="../../aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="../../footer.jsp"></jsp:include></div>
</div>
</body>
</html>

