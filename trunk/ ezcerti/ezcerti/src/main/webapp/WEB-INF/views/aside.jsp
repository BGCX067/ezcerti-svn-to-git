<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<script type="text/javascript">
function checkForm(f) {
	/* 
	if($('input:radio[name=input_rdo_user]:checked').length < 1){
		alert("선택해주세요.");
		return false;
	}
	 */
	if($("#j_username").val() == ""){
		alert("교번 / 사번을 입력해주세요.");
		$("#j_username").focus();
		return false;
	}
	if($("#j_password").val() == ""){
		alert("비밀번호를 입력해주세요.");
		$("#j_password").focus();
		return false;
	}
}
</script>
 <script>
<!--

    function showElement(nInx) {

        var menu1 = document.getElementById("in_menu1");
        var menu2 = document.getElementById("in_menu2");
        var menu3 = document.getElementById("in_menu3");
        var menu4 = document.getElementById("in_menu4");
        var menu5 = document.getElementById("in_menu5");
        var menu6 = document.getElementById("in_menu6");
        var menu7 = document.getElementById("in_menu7");
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
     <div id="sub_content_right" >
      <sec:authorize access="isAnonymous()">
      <div id="login_sub">
      <!-- 로그인 이전 -->
      <c:if test="${not empty error }">
		<div align="center" class="error-text">${error }</div>
	  </c:if>
      <form action="static/j_spring_security_check" method="post" id="frm_login" onsubmit="return checkForm(this)">
	        <div class="login_area">
	          <div class="login_left">
	            <p class="float_left mg_t3"><img src="/resources/images/aside/id.gif" class="float_left pd_r10 mg_t5" alt="아이디" />
	              <input id="j_username" name="j_username" type="password" class="login_text" />
	            </p>
	            <p class="float_left mg_t3"><img src="/resources/images/aside/pw.gif" class="float_left pd_r10 mg_t5" alt="패스워드" />
	              <input id="j_password" name="j_password" type="PASSWORD" class="login_text" />
	            </p>
	          </div>
	          <div class="login_btn">
	            <input id="login_btn" name="image" type="image" src="/resources/images/aside/btn_login.gif" alt="로그인" tabindex="3"/>
	          </div>
	        </div>
	        
	        
	        <p class="pd_l50"> 
	          <input type="checkbox" name="_spring_security_remember_me" style="margin-left:10px;" /> 아이디 기억하기
	       </p>
	        <p class="pd_l50" style="margin-left:-20px;"><img src="/resources/images/aside/txt_index_01.gif"/></p>
	        
	  </form>
	  </div>      
	</sec:authorize>
	<!-- //로그인 이전 -->
	<!-- 로그인 이후 -->
	<sec:authorize access="isAuthenticated()">
   	<div class="right_menu">
		<p style="color:#4b4b4b;"><span class="b"><strong><sec:authentication property="principal.username"/></strong>
		</span>님 반갑습니다^^.</p>
		<a href="/static/j_spring_security_logout">로그아웃</a>
    </div>
	</sec:authorize>
	<!-- //로그인 이후 -->
      <div class="sub">
      	  <ul id="sub_menu">
        	<li class="menu1"><a href="/muniv/prof/prof_list" onclick="javascript:showElement(1);"><img src="/resources/images/aside/smenu_prof_off.gif" class="aside_menu_img" onmouseover="this.src='/resources/images/aside/smenu_prof_on.gif'" onmouseout="this.src='/resources/images/aside/smenu_prof_off.gif'" alt="교수" /></a>
          <div id='in_menu1' style='display:'>
          </div>
          </li>
        	<li class="menu2"><a href="/muniv/student/student_list" onclick="javascript:showElement(2);"><img src="/resources/images/aside/smenu_student_off.gif" class="aside_menu_img" onmouseover="this.src='/resources/images/aside/smenu_student_on.gif'" onmouseout="this.src='/resources/images/aside/smenu_student_off.gif'" alt="학생" /></a>
          <div id='in_menu2' style='display:none'>
          </div>
          </li>
        	<li class="menu3"><a href="/muniv/attendee/attendee_list" onclick="javascript:showElement(3);"><img src="/resources/images/aside/smenu_attendee_off.gif" class="aside_menu_img" onmouseover="this.src='/resources/images/aside/smenu_attendee_on.gif'" onmouseout="this.src='/resources/images/aside/smenu_attendee_off.gif'" alt="수강생" /></a>
          <div id='in_menu3' style='display:none'>
          </div>
          </li>
        	<li class="menu4"><a href="/muniv/attend/class_attend_list" onclick="javascript:showElement(4);"><img src="/resources/images/aside/smenu_attend_off.gif" class="aside_menu_img" onmouseover="this.src='/resources/images/aside/smenu_attend_on.gif'" onmouseout="this.src='/resources/images/aside/smenu_attend_off.gif'" alt="강의출결" /></a>
          <div id='in_menu4' style='display:none' >
          </div>
          </li>
        	<li class="menu5"><a href="#" onclick="javascript:showElement(5);"><img src="/resources/images/aside/smenu_basic_off.gif" class="aside_menu_img" onmouseover="this.src='/resources/images/aside/smenu_basic_on.gif'" onmouseout="this.src='/resources/images/aside/smenu_basic_off.gif'" alt="기초정보" /></a>
          <div id='in_menu5' style='display:none' >
          <ul>
          	<li><a href="/muniv/basic/univ_info"><img src="/resources/images/aside/smenu_univ.gif" alt="학교정보" /></a></li>
          	<li><a href="/muniv/basic/college_list"><img src="/resources/images/aside/smenu_college.gif" alt="단과정보" /></a></li>
          	<li><a href="/muniv/basic/department_list"><img src="/resources/images/aside/smenu_dept.gif" alt="학과정보" /></a></li>
          	<li><a href="/muniv/basic/subject_list"><img src="/resources/images/aside/smenu_subject.gif" alt="과목정보" /></a></li>
          	<li><a href="/muniv/basic/classday_list"><img src="/resources/images/aside/smenu_classday.gif" alt="강의일정보" /></a></li>
          	<li><a href="/muniv/basic/classhour_list"><img src="/resources/images/aside/smenu_classhour.gif" alt="교시정보" /></a></li>
          </ul>
          </div>
          </li>
        	<li class="menu6"><a href="#" onclick="javascript:showElement(6);"><img src="/resources/images/aside/smenu_admin_off.gif" class="aside_menu_img" onmouseover="this.src='/resources/images/aside/smenu_admin_on.gif'" onmouseout="this.src='/resources/images/aside/smenu_admin_off.gif'" alt="관리자" /></a>
          <div id='in_menu6' style='display:none' >
          <ul>
          	<li><a href="/muniv/info/admin_list"><img src="/resources/images/aside/smenu_adminlist.gif" alt="학교정보" /></a></li>
            <li><a href="#"><img src="/resources/images/aside/smenu_notice.gif" alt="공지사항" /></a></li>
          </ul>
          </div>
          </li>
        	<li class="menu7"><a href="#" onclick="javascript:showElement(7);"><img src="/resources/images/aside/smenu_stats_off.gif" class="aside_menu_img" onmouseover="this.src='/resources/images/aside/smenu_stats_on.gif'" onmouseout="this.src='/resources/images/aside/smenu_stats_off.gif'" alt="통계" /></a>
          <div id='in_menu7' style='display:none'>
          </div>
          </li>
        </ul>
      
      
      
      <div class="sub_01">
      	<p><img src="/resources/images/aside/line_dashed.gif" alt="" /></p>
      	<p class="pd_t50 pd_l10"><img src="/resources/images/aside/call_center.gif" alt="고객센터1544-5105" /></p>
      </div> 
      </div>
    </div>