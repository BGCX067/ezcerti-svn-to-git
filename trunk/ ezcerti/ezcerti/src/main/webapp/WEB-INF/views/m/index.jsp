<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>메뉴 :: 서비스명</title>
<meta name="viewport" content="device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="resources_m/css/jquery.mobile.theme-1.0.min.css" rel="stylesheet" type="text/css"/>
<link href="resources_m/css/jquery.mobile.structure-1.0.min.css" rel="stylesheet" type="text/css"/>

<script src="resources_m/js/jquery-1.6.4.min.js" type="text/javascript"></script>
<script src="resources_m/js/jquery.mobile-1.0.min.js" type="text/javascript"></script>
<link href="resources_m/css/style.css" rel="stylesheet" type="text/css">
</head>

<body style="background-color:#f0f0f0;"> 

<div data-role="page" id="home">
	<div class="toptitle" ></div>
	<div class="topbutton" >
      <a href="#todayclass"><img src="resources_m/resources_m/images/student_btn.png" alt="학생버튼"></a>
      <a href="#page3"><img src="resources_m/images/professor_btn.png"alt="교수 버튼"></a>     
	</div>
     <div class="idboxbg">
          <p>
           <div data-role="fieldcontain"> 아 이 디
         <input name="textinput"  type="text" id="textinput" />
         </div>  
         </p>
          <p>
           <div data-role="fieldcontain"> 비밀번호
         <input name="textinput"  type="password" id="textinput" />
         </div>  
       </p>
      <div data-role="fieldcontain" class="whitefont">
         <input id="check" type="checkbox"/> 
      자동로그인
         <input id="check" type="checkbox"/> 
          비밀번호찾기
        </div>
           </div>
         
    <div class="topbutton">
    <a href="#"><img src="resources_m/images/login_btn.png"  alt="로그인버튼"></a> 
    <a href="#"><img src="resources_m/images/pwsearch_btn.png" alt="비번찾기버튼"></a>
    </div>
	<div class="homefooter">
	</div>
</div>



<div data-role="page" id="todayclass">
	<div class="subtop">
    <div class="subtopsize" > <a href="#"><img src="resources_m/images/subtop_list_btn.png" alt="리스트버튼"></a>
    </div>
    </div>
    <div class="subtoplist">
    <a href="#"><img src="resources_m/images/top_menu1.gif" alt="마이페이지"></a>
    <a href="#"><img src="resources_m/images/top_menu2.gif" alt="강의출결"></a>
    <a href="#"><img src="resources_m/images/top_menu3.gif" alt="수강생"></a> 
    <a href="#"><img src="resources_m/images/top_menu4.gif"alt="개인정보관리"></a>
    </div>
	 <div data-role="content">	
		<div><img src="resources_m/images/subtitle_icon.png" alt="icon">
        <span class="bluefont">오늘의 강의</span></div>
         <div>
         <ul class="dayul"> 
         <li><a href="#"><img src="resources_m/images/before_btn.gif" alt="이전버튼"></a></li>
         <li><span class="daytext">2013년 4월 6일 (목)</span></li>
         <li><a href="#"><img src="resources_m/images/next_btn.gif" alt="다음버튼"></a></li>
         </ul></div>
         <div>
         <table width="100%" border="0" cellpadding="3" cellspacing="0" class="tableblue">
  <tr>
    <td width="16%" rowspan="2"><div class="grayback">정 상<br>
      강의전</div></td>
    <td width="56%" height="24">2013-04-06(목)15:00</td>
    <td width="12%" align="right">42명</td>
    <td width="9%" rowspan="2"><div class="tablebtnbg"> 휴강<br> 처리
    </div></td>
    <td width="9%" rowspan="2"><div class="tablebtnbg"> 강의<br> 인증
    </div></td>
  </tr>
  <tr>
    <td class="grayfont">Seminar on Comparative <br>
      Analysis fo Asian .......</td>
    <td width="12%" align="right">8225CC</td>
    </tr>
</table>
<table width="100%" border="0" cellpadding="3" cellspacing="0" class="tablegray">
  <tr>
    <td width="16%" rowspan="2"><div class="grayback">휴 강<br>
    종 료</div></td>
    <td width="56%" height="24">2013-04-06(목)15:00</td>
    <td width="12%" align="right">42명</td>
    <td rowspan="2"><div class="tablerighttext"><strong>보강정보</strong><br>
    2013-04-07<br>(금) 12:00</div></td>
    </tr>
  <tr>
    <td class="grayfont">통계데이터베이스구축및<br>
      실습</td>
    <td width="12%" align="right">8225CC</td>
    </tr>
</table>
<table width="100%" border="0" cellpadding="3" cellspacing="0" class="tablegray">
  <tr>
    <td width="16%" rowspan="2"><div class="grayback">정 상<br>
    종 료</div></td>
    <td width="56%" height="24">2013-04-06(목)15:00</td>
    <td width="12%" align="right">42명</td>
    <td rowspan="2"><div class="tablerightone">출결완료</div></td>
    </tr>
  <tr>
    <td class="grayfont">Seminar on Comparative <br>
      Analysis fo Asian .......</td>
    <td width="12%" align="right">8225CC</td>
    </tr>
</table>
        </div>
         <p>
         <div><img src="resources_m/images/subtitle_icon.png" alt="icon">
        <span class="bluefont">강의 목록</span></div> </p>
        <div>
      <table width="100%" border="0" cellpadding="3" cellspacing="0" class="tablegray">
        <tr>
    <td width="7%" rowspan="2" align="center" valign="middle"><div class="numberbg">1</div></td>
    <td width="52%" height="28">화요일 11:00</td>
    <td width="21%" align="right">25939</td>
    <td width="16%" align="right">14명</td>
    <td width="7%" rowspan="2" align="center" valign="middle"><img src="resources_m/images/circle_arrow.gif" width="22" height="22" alt="화살표아이콘"></td>
    </tr>
  <tr>
    <td colspan="3" class="grayfont">Seminar on Comparative Analysis of...</td>
    </tr>
</table>
 <table width="100%" border="0" cellpadding="3" cellspacing="0" class="tablegray">
        <tr>
    <td width="7%" rowspan="2" align="center" valign="middle"><div class="numberbg">2</div></td>
    <td width="52%" height="28">화요일 11:00</td>
    <td width="21%" align="right">25939</td>
    <td width="16%" align="right">14명</td>
    <td width="7%" rowspan="2" align="center" valign="middle"><img src="resources_m/images/circle_arrow.gif" width="22" height="22" alt="화살표아이콘"></td>
    </tr>
  <tr>
    <td colspan="3" class="grayfont">Seminar on Comparative Analysis of...</td>
    </tr>
</table>
 <table width="100%" border="0" cellpadding="3" cellspacing="0" class="tablegray">
        <tr>
    <td width="7%" rowspan="2" align="center" valign="middle"><div class="numberbg">3</div></td>
    <td width="52%" height="28">화요일 11:00</td>
    <td width="21%" align="right">25939</td>
    <td width="16%" align="right">14명</td>
    <td width="7%" rowspan="2" align="center" valign="middle"><img src="resources_m/images/circle_arrow.gif" width="22" height="22" alt="화살표아이콘"></td>
    </tr>
  <tr>
    <td colspan="3" class="grayfont">Seminar on Comparative Analysis of...</td>
    </tr>
</table>
        </div>
      </div>
</div>


<div data-role="page" id="page3">
	<div data-role="header">
		<h1>3페이지</h1>
	</div>
	<div data-role="content">	
		내용		
	</div>
	<div data-role="footer">
		<h4>페이지 바닥글</h4>
	</div>
</div>

<div data-role="page" id="page4">
	<div data-role="header">
		<h1>4페이지</h1>
	</div>
	<div data-role="content">	
		내용		
	</div>
	<div data-role="footer">
		<h4>페이지 바닥글</h4>
	</div>
</div>

</body>
</html>

