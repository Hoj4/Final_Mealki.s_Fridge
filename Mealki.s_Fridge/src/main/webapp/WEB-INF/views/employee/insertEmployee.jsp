<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키의 냉장고</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Skydash Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/feather/feather.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/maincss/js/select.dataTables.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/maincss/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/maincss/images/favicon.png" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/maincss/css/blank.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/employee/insertEmployee.css">
  
  
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-3.6.3.js"></script>
<script type="text/javascript">
</script>
</head>
<body>

  <div class="container-scroller">
  
<!-- 헤더, 사이드바,개인설정 시작 
	사이드바와 개인설정은 sidebar에 같이 있음-->
        <jsp:include page="../main/top.jsp" /> 
    <jsp:include page="../main/sidebar.jsp" /> 
<!-- 헤더, 사이드바,개인설정 끝 -->
 
      
<!-- 본문시작 -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
<!--  제목을 적어주세요 -->
                  <h3 class="font-weight-bold">직원등록</h3>
                  <h6 class="font-weight-normal mb-0">메뉴설명쓰 <span class="text-primary">강조쓰</span></h6>
                </div>
                
          <div class="contentbody" style="background: pink;"> 
          
<!--  본문 내용 시작 -->
            <div class="insertImployeeBody" style="background: gray;">
            	<form action="${pageContext.request.contextPath}/employee/inertEmployeePro" method="post"> 
            	<!-- 사진부분 -->
            	<div class="imployeeImg"> 
            		<div class="img"><input type="image">이미지</div>
            		<div class="imgbtn">
					<label for="file">
					  <span class="btn-upload">파일 업로드하기</span>
					</label>
            		<input type="file" name="file" id="file"></div>
            	</div>
            	
            	
            	<!-- 사원 정보부분 -->
            	<div class="employeeInfo"> 
            	
            	<fieldset>
						<ul>
							<li><label for="emp_Kname">이름</label> <input type="text" id="emp_Kname" name="emp_Kname" size="15" required></li>
							<li><label for="emp_Ename">영문이름</label> <input type="text" id="emp_Ename" name="emp_Ename" size="15" required></li>
							<li><label for="emp_birth">생년월일</label> <input type="text" id="emp_birth" name="emp_birth" size="15" required></li>
							<li><label for="emp_gender">성별</label> <input type="radio" name="emp_gender" id="남"> 남 
																	<input type="radio" name="emp_gender" id="여"> 여</li>
							<li><label for="emp_tel">내선번호</label> <input type="text" id="emp_tel" name="emp_tel" size="15" required></li>
							<li><label for="emp_phone">휴대폰번호</label> <input type="text" id="emp_phone" name="emp_phone" size="15" required></li>
							
							<li><label for="emp_email">이메일</label><input type="email" id="emp_email" name="emp_email" size="30"></li>
							<li><label for="emp_addr">주소</label> <input type="text" name="emp_addr" id="emp_addr" placeholder="클릭하여 주소를 입력하세요" readonly ></li>
							<li><label for="emp_addr2">상세주소</label> <input type="text" name="emp_addr2" id="emp_addr2" placeholder="상세주소를 입력하세요"></li>
							<li><label for="emp_classification">직원분류
									<select name="emp_classification_option">
										<option value=""> 직원분류 선택 </option>
										<option value="현장직"> 현장직 </option>
										<option value="사무직"> 사무직 </option>
									</select>
							
								</label>
							</li>
							<li><label for="dept_position">직책</label> 	
									<select name="dept_position_option">
										<option value=""> 직책 선택 </option>
										<option value="팀원"> 팀원 </option>
										<option value="파트장"> 파트장 </option>
										<option value="팀장"> 팀장 </option>
										<option value="본부장"> 본부장 </option>
									</select>
														
							</li>
							<li><label for="dept_duty">직위</label> 
									<select name="dept_duty_option" class="dept_duty_option">
										<option value=""> 직위 선택 </option>
										<option value="사원"> 사원 </option>
										<option value="주임"> 주임 </option>
										<option value="대리"> 대리 </option>
										<option value="과장"> 과장 </option>
										<option value="차장"> 차장 </option>
										<option value="부장"> 부장 </option>
									</select>							
							</li>
							<li><label for="dept_num">부서</label> 
									<select name="dept_num_option" class="dept_num_option">
										<option value=""> 부서 선택 </option>
										<option value="경리부"> 경리부 </option>
										<option value="영업부"> 영업부 </option>
										<option value="생산부"> 생산부 </option>
										<option value="자재부"> 자재부 </option>
										<option value="인사부"> 인사부 </option>
										<option value="전산부"> 전산부 </option>
									</select>							
							
							</li>
					</ul>
				</fieldset>
				<!-- 기타 개인정보 입력 끝 -->
					
				<!-- 전송 버튼 -->
				<fieldset>
					<input type="submit" value="직원등록" id="insertEmployeeBtn" /> 
					<input type="reset" value="초기화" id="insertEmployeeReset" />
				</fieldset>
				</form>
            	</div>
            
            </div>
            
 <!--  본문내용 끝 -->    
        
          </div>
<!-- 페이징하실거면 여기서 시작 -->
     페이징
<!-- 페이징 끝 -->
            </div>
            
          </div>
          
        </div>
        
<!-- 이 밑으로 무언가 쓰지 마세요 페이징도 이 위에서 처리되야함. -->
        
        
<!-- 푸터시작 -->
     <jsp:include page="../main/footer.jsp" /> 
<!--  푸터 끝 -->

<!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="${pageContext.request.contextPath}/resources/maincss/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="${pageContext.request.contextPath}/resources/maincss/vendors/chart.js/Chart.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/dataTables.select.min.js"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="${pageContext.request.contextPath}/resources/maincss/js/off-canvas.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/hoverable-collapse.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/template.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/settings.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="${pageContext.request.contextPath}/resources/maincss/js/dashboard.js"></script>
  <script src="${pageContext.request.contextPath}/resources/maincss/js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
window.onload = function(){
    document.getElementById("emp_addr").addEventListener("click", function(){ //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById("emp_addr").value = data.address; // 주소 넣기
                document.querySelector("input[name=emp_addr2]").focus(); //상세입력 포커싱
            }
        }).open();
    });
}
</script>
</html>