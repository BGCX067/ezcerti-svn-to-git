<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title> :: 서비스명</title>
<script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-ui-1.10.3.custom.min.js"></script>
<link rel="stylesheet" href="resources/css/smoothness/jquery-ui-1.10.3.custom.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/sub_style.css">

</head>

<body class="main_body">
<div id="wrap">
<div id="header">
	<jsp:include page="header.jsp"></jsp:include>
</div>
<div id="article">
<div id="contents">
	<!-- section -->
  <div id="main_container">
    <div id="content_left">
      <div class="left_top">
        <p class="float_left mg_t45"><img src="resources/images/index/visual_txt.gif" alt="복잡한 전자출결시스템은 이제그만!" /></p>
        <p><img src="resources/images/index/visual_bg.gif" alt="" /></p>
      </div>
      <div class="left_bottom">
        <p class="cube_01"><img src="resources/images/index/cube_01.gif" alt="" /></p>
        <p class="cube_02"><img src="resources/images/index/cube_02.gif" alt="" /></p>
        <p class="cube_03"><img src="resources/images/index/cube_03.gif" alt="" /></p>
        <p class="cube_04"><img src="resources/images/index/cube_04.gif" alt="" /></p>
      </div>
    </div>
    </div>	

	<!-- //section -->
</div>
</div>
<div id="right"><jsp:include page="aside.jsp"></jsp:include></div>
<div style="clear: both;"></div>
<div id="footer"><jsp:include page="footer.jsp"></jsp:include></div>
</div>
</body>
<div id="not_visible"></div>
</html>

