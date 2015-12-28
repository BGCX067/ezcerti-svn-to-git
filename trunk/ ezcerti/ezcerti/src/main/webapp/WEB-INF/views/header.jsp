<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<script>
<!--

    function showElementTop(nInx) {

        var menu1 = document.getElementById("in_topmenu1");
        var menu2 = document.getElementById("in_topmenu2");
        var menu3 = document.getElementById("in_topmenu3");
        var menu4 = document.getElementById("in_topmenu4");
        var menu5 = document.getElementById("in_topmenu5");
        var menu6 = document.getElementById("in_topmenu6");
        var menu7 = document.getElementById("in_topmenu7");
        if (nInx == 1) {
            menu1.style.display = "";
            menu2.style.display = "none";
            menu3.style.display = "none";
            menu4.style.display = "none";
            menu5.style.display = "none";
            menu6.style.display = "none";
            menu7.style.display = "none";            
        }
        else if (nInx == 2) {
            menu1.style.display = "none";
            menu2.style.display = "";
            menu3.style.display = "none";
            menu4.style.display = "none";
            menu5.style.display = "none";
            menu6.style.display = "none";
            menu7.style.display = "none";            
        }
        else if (nInx == 3) {
            menu1.style.display = "none";
            menu2.style.display = "none";
            menu3.style.display = "";
            menu4.style.display = "none";
            menu5.style.display = "none";
            menu6.style.display = "none";
            menu7.style.display = "none";            
        }
        else if (nInx == 4) {
            menu1.style.display = "none";
            menu2.style.display = "none";
            menu3.style.display = "none";
            menu4.style.display = "";
            menu5.style.display = "none";
            menu6.style.display = "none";
            menu7.style.display = "none";            
        }
        else if (nInx == 5) {
            menu1.style.display = "none";
            menu2.style.display = "none";
            menu3.style.display = "none";
            menu4.style.display = "none";
            menu5.style.display = "";
            menu6.style.display = "none";
            menu7.style.display = "none";
        }
        else if (nInx == 6) {
            menu1.style.display = "none";
            menu2.style.display = "none";
            menu3.style.display = "none";
            menu4.style.display = "none";
            menu5.style.display = "none";
            menu6.style.display = "";
            menu7.style.display = "none";
        }
        else if (nInx == 7) {
            menu1.style.display = "none";
            menu2.style.display = "none";
            menu3.style.display = "none";
            menu4.style.display = "none";
            menu5.style.display = "none";
            menu6.style.display = "none";
            menu7.style.display = "";
        }
    }
    
//-->
</script>

<div id="top_logo">
	<h1><a href="/"><img src="/resources/images/top/top_logo.gif" alt="전자출결시스템 EZCERTI" /></a></h1>
</div>
<div id="lnb">
	<ul>
		<sec:authorize ifNotGranted="ROLE_ANONYMOUS">
		<li><a href="/"><img src="/resources/images/top/lnb_01.gif" alt="HOME" /></a></li>
		<li><a href="/static/j_spring_security_logout"><img src="/resources/images/top/lnb_03.gif" alt="LOGOUT" /></a></li>
		</sec:authorize>
	</ul>
</div>
<sec:authorize ifAnyGranted="ROLE_ANONYMOUS">
비회원
</sec:authorize>

<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_USER">
<div id="top">
      <ul id="top_menu">
        <li class="menu1"><a href="/muniv/prof/prof_list"><img src="/resources/images/top/topmenu_prof_off.gif" class="top_menu_img" onmouseover="this.src='/resources/images/top/topmenu_prof_on.gif'" onmouseout="this.src='/resources/images/top/topmenu_prof_off.gif'" alt="교수관리" /></a>
          <div id='in_topmenu1' style='display:none'>
          </div>
        </li>
        <li class="menu2"><a href="/muniv/student/student_list"><img src="/resources/images/top/topmenu_student_off.gif" class="top_menu_img" onmouseover="this.src='/resources/images/top/topmenu_student_on.gif'" onmouseout="this.src='/resources/images/top/topmenu_student_off.gif'" alt="출결관리" /></a>
          <div id='in_topmenu2' style='display:none'>
          </div>
        </li>
        <li class="menu3"><a href="/muniv/attendee/attendee_list"><img src="/resources/images/top/topmenu_attendee_off.gif" class="top_menu_img" onmouseover="this.src='/resources/images/top/topmenu_attendee_on.gif'" onmouseout="this.src='/resources/images/top/topmenu_attendee_off.gif'" alt="기초코드관리" /></a>
          <div id='in_topmenu3' style='display:none'>
          </div>
        </li>
        <li class="menu4"><a href="/muniv/attend/class_attend_list"><img src="/resources/images/top/topmenu_attend_off.gif" class="top_menu_img" onmouseover="this.src='/resources/images/top/topmenu_attend_on.gif'" onmouseout="this.src='/resources/images/top/topmenu_attend_off.gif'" alt="학교관리" /></a>
          <div id='in_topmenu4' style='display:none' >
          </div>
        </li>
        <li class="menu5"><a href="#" onclick="javascript:showElementTop(5);"><img src="/resources/images/top/topmenu_basic_off.gif" class="top_menu_img" onmouseover="this.src='/resources/images/top/topmenu_basic_on.gif'" onmouseout="this.src='/resources/images/top/topmenu_basic_off.gif'" alt="학교관리" /></a>
          <div id='in_topmenu5' style='display:none' >
          <ul>
            <li><a href="/muniv/basic/univ_info"><img src="/resources/images/top/sub_menu_univ.gif" alt="" /></a></li>
            <li><a href="/muniv/basic/college_list"><img src="/resources/images/top/sub_menu_college.gif" alt="" /></a></li>
            <li><a href="/muniv/basic/department_list"><img src="/resources/images/top/sub_menu_dept.gif" alt="" /></a></li>
            <li><a href="/muniv/basic/subject_list"><img src="/resources/images/top/sub_menu_subject.gif" alt="" /></a></li>
            <li><a href="/muniv/basic/classday_list"><img src="/resources/images/top/sub_menu_classday.gif" alt="" /></a></li>
            <li><a href="/muniv/basic/classhour_list"><img src="/resources/images/top/sub_menu_classhour.gif" alt="" /></a></li>
          </ul>        
          </div>
        </li>
        <li class="menu6"><a href="#" onclick="javascript:showElementTop(6);"><img src="/resources/images/top/topmenu_admin_off.gif" class="top_menu_img" onmouseover="this.src='/resources/images/top/topmenu_admin_on.gif'" onmouseout="this.src='/resources/images/top/topmenu_admin_off.gif'" alt="학교관리" /></a>
          <div id='in_topmenu6' style='display:none' >
          <ul>
			<li><a href="/muniv/info/admin_list"><img src="/resources/images/top/sub_menu_adminlist.gif" alt="" /></a></li>
            <li><a href="#"><img src="/resources/images/top/sub_menu_notice.gif" alt="" /></a></li>          
          </ul>
          </div>
        </li>
        <li class="menu7"><a href="#"><img src="/resources/images/top/topmenu_stats_off.gif" class="top_menu_img" onmouseover="this.src='/resources/images/top/topmenu_stats_on.gif'" onmouseout="this.src='/resources/images/top/topmenu_stats_off.gif'" alt="학교관리" /></a>
          <div id='in_topmenu7' style='display:none' >
          </div>
        </li>
      </ul>
</div>
</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_PROF">

</sec:authorize>
<sec:authorize ifAnyGranted="ROLE_STUDENT">

</sec:authorize>