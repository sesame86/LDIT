<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<!-- 이모티콘 -->
<script src="https://kit.fontawesome.com/616f27e0c4.js" crossorigin="anonymous"></script>

<!-- css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/ldit_header.css" /><!-- header css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/ldit_aside.css" /><!-- main css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/basic.css" /><!-- basic css -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/main.css" /><!-- main css -->

<!-- jquery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- jstl -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<title>Insert title here</title>
</head>
<body>
	<c:if test="${!empty authMsg}">
	<script>
		alert("${authMsg}");
	</script>
	</c:if>
	<%@ include file="ldit_header.jsp" %>
	<%@ include file="ldit_aside.jsp" %>
	<section>
        <article id="a1">
            <h1 class="mainTitle">오늘의 일정</h1>
            <h1 class="mainTitle">내정보</h1>
            <h1 class="mainTitle">휴식정보</h1>

            <h1 class="mobileTitle">오늘의 일정</h1>
            <div id="todayWork">
                <!--여기 작성 3-->
                 <div class="today">
                    <div class="aaaaa"></div>
                        <div class="bbbbb">
                        <h4>일정 제목</h4>
                    </div>
                </div>
                <div class="today">
                    <div class="aaaaa" style="background-color: #B5DDC7;"></div>
                        <div class="bbbbb">
                        <h4>일정 제목</h4>
                    </div>
                </div>
                <div class="today">
                    <div class="aaaaa" ></div>
                        <div class="bbbbb">
                        <h4>일정 제목</h4>
                    </div>
                </div>
                <div class="today">
                    <div class="aaaaa" style="background-color: #F8C7C2;"></div>
                        <div class="bbbbb">
                        <h4>일정 제목</h4>
                    </div>
                </div>
                <div class="today">
                    <div class="aaaaa"></div>
                        <div class="bbbbb">
                        <h4>일정 제목</h4>
                    </div>
                </div>
                <div class="today">
                    <div class="aaaaa" style="background-color: #B5DDC7;"></div>
                        <div class="bbbbb">
                        <h4>일정 제목</h4>
                    </div>
                </div>
                <div class="today">
                    <div class="aaaaa" ></div>
                        <div class="bbbbb">
                        <h4>일정 제목</h4>
                    </div>
                </div>
                <div class="today">
                    <div class="aaaaa" style="background-color: #F8C7C2;"></div>
                        <div class="bbbbb">
                        <h4>일정 제목</h4>
                    </div>
                </div>
               
            </div>  

            </div>
            <h1 class="mobileTitle">내정보</h1>
            <div id="myInfo">
                <img src="<%=request.getContextPath() %>/resources/image/myInfoAlt.JPG">
                <h3 id="miName">${loginUser.stfName}</h3>
                <p id="miHour">오늘의 근무시간 ${elapsedWTime}</p>
                <div id="miToday">
                    <p id="miGo">출근</p>
                    <p id="miGoTime">${attStart}</p>
                    <p id="miOut">퇴근</p>
                    <p id="miOutTime">${attEndFormat}</p>
                </div>
                <p id="miWeekHour">주간 근무시간</p>
                <progress value="60" max="100"></progress>
                <p id="miMonthHour">월간 근무시간</p>
                <progress value="20" max="100"></progress>
            </div>
            <h1 class="mobileTitle">휴식정보</h1>
            <div id="restInfo">
                <!--여기 작성 5-->
                <div style="margin: 5em auto;">

                    <p id="restHour">오늘 총 휴식시간</p>
                    <div id="restToday">
                        <p id="restGo" > 휴식</p>
                    </div>
                    <div id="dayoffToday"></div>
                    <p id="dayoff">연차 잔여일수</p>
                    <p id="dayoffconunt">10 일</p>
                </div>       

            </div>
        </article>
        <article id="a2">
            <h1 id="pjTitle">진행중인 프로젝트</h1>
            <h1 id="msgTitle">쪽지 즐겨찾기</h1>
            <h1 class="mobileTitle">진행중인 프로젝트</h1>
            <div id="myProject">
            <c:forEach var="pVo" items="${projectVo}">
                <div class="mpContainer">
                	<c:if test="${pVo.proStatus == 'N'.charAt(0)}">
                		<div class="reqColorSmall" style="background-color: #3498DB"></div>
                    </c:if>
                    <c:if test="${pVo.proStatus == 'C'.charAt(0)}">
                    	<div class="reqColorSmall" style="background-color: #27AE60"></div>
                    </c:if>
                        <div class="mpInfo">
                        <h4>${pVo.proTitle}</h4>
                        <p>${pVo.proStart} ~ ${pVo.proEnd}</p>
                    </div>
                    <c:if test="${pVo.proStatus == 'N'.charAt(0)}">
                    	<div class="reqColorBig" style="background-color: #3498DB">새로운 요청</div>
                    </c:if>
                    <c:if test="${pVo.proStatus == 'C'.charAt(0)}">
                    	<div class="reqColorBig" style="background-color: #27AE60">진행중</div>
                    </c:if>
                </div>
             </c:forEach>
            </div>
            <h1 class="mobileTitle">쪽지 즐겨찾기</h1>
            <div id="msgBookmark">
                <div class="bmContainer">
                    <img src="<%=request.getContextPath() %>/resources/image/myInfoAlt.JPG">
                    <div class="bmInfo">
                        <h4>김예은</h4>
                        <p>개발팀</p>
                    </div>
                    <a class="sendMsg" href="#"><i class="far fa-paper-plane"></i></a>
                </div>
                <hr>
                <div class="bmContainer">
                    <img src="<%=request.getContextPath() %>/resources/image/myInfoAlt.JPG">
                    <div class="bmInfo">
                        <h4>김예은</h4>
                        <p>개발팀</p>
                    </div>
                    <a class="sendMsg" href="#"><i class="far fa-paper-plane"></i></a>
                </div>
                <hr>
                <div class="bmContainer">
                    <img src="<%=request.getContextPath() %>/resources/image/myInfoAlt.JPG">
                    <div class="bmInfo">
                        <h4>김예은</h4>
                        <p>개발팀</p>
                    </div>
                    <a class="sendMsg" href="#"><i class="far fa-paper-plane"></i></a>
                </div>
                <hr>
                <div class="bmContainer">
                    <img src="<%=request.getContextPath() %>/resources/image/myInfoAlt.JPG">
                    <div class="bmInfo">
                        <h4>김예은</h4>
                        <p>개발팀</p>
                    </div>
                    <a class="sendMsg" href="#"><i class="far fa-paper-plane"></i></a>
                </div>
                <hr>
                <div class="bmContainer">
                    <img src="<%=request.getContextPath() %>/resources/image/myInfoAlt.JPG">
                    <div class="bmInfo">
                        <h4>김예은</h4>
                        <p>개발팀</p>
                    </div>
                    <a class="sendMsg" href="#"><i class="far fa-paper-plane"></i></a>
                </div>
            </div>
        </article>
    </section>
    <script type="text/javascript">
	    let attInfo = setInterval(countTime, 1000);
	    function countTime() {
		    var nowDate = new Date();
		    var str = "${attStart}";
		    var bh = str.substr(0,2);
		    var bm = str.substr(3,2);
		    var bs = str.substr(6,2);
		    
		    var wh = nowDate.getHours();
		    var wm = nowDate.getMinutes();
		    var ws = nowDate.getSeconds();
		    
		    var hour = wh-bh;
		    var minute = wm-bm;
		    var second = ws-bs;
		    
		    var totalWorkingTime= addZero(hour,2)+":"+addZero(minute,2)+":"+addZero(second,2);
		    $("#miHour").html("오늘의 근무시간 "+totalWorkingTime);
		    
		    var brStart = "${wb.brStart}";
		    var sbh = brStart.substr(0,2);
		    var sbm = brStart.substr(3,2);
		    var sbs = brStart.substr(6,2);
		    
		    var brEnd = "${wb.brEnd}";
		    var ebh = brEnd.substr(0,2);
		    var ebm = brEnd.substr(3,2);
		    var ebs = brEnd.substr(6,2);
		    var wbtime= addZero(ebh-sbh,2)+":"+addZero(ebm-sbm,2)+":"+addZero(ebs-sbs,2);
		    $("#restHour").html("오늘 총 휴식시간 "+wbtime);
	    }
	    function addZero(num, digits){
		    var zero = '';
		    num = num.toString();
		    if (num.length < digits) {
			    for (var i = 0; i < digits - num.length; i++)
			    zero += '0';
		    }
		    return zero + num;
	    }
	    /* var endTime = "${attEndFormat}";
	    if(endTime != null){
	    	clearInterval(ckInterval);
	    } */
    </script>
</body>
</html>