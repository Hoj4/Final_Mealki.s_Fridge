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
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/wms/orderForm.css">
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/employee/empMamageTab.js"></script> --%>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-3.6.3.js"></script>
<script type="text/javascript">
/* 탭 전환 */
  $(function(){
  $('.tabcontent > div').hide();
  $('.tabnav a').click(function () {
    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
    $('.tabnav a').removeClass('active');
    $(this).addClass('active');
    return false;
  }).filter(':eq(0)').click();
  });
</script>

<script type="text/javascript">
/* 탭1에서 검색후 탭2 클릭시 검색결과가 url 창에 그대로 남아있으므로 페이지 갱신없이 url만 변경 */
function fun2() {
	history.pushState(null, null, 'insertOrder');
	/* if (typeof (history.pushState) != "undefined") { 
		history.pushState(null, null, 'insertOrder'); 
	} else { 
	} */
}
</script>
</head>
<body>
  <div class="container-scroller">
  
<!-- 헤더, 사이드바,개인설정 시작 
	사이드바와 개인설정은 sidebar에 같이 있음-->
    <jsp:include page="../../main/top.jsp" /> 
    <jsp:include page="../../main/sidebar.jsp" /> 
<!-- 헤더, 사이드바,개인설정 끝 -->
 
      
<!-- 본문시작 -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
<!--  제목을 적어주세요 -->
                  <h3 class="font-weight-bold">발주 관리</h3>
                </div>
                
                <div class="tab">
				    <ul class="tabnav">
				      <li><a href="#tab01">발주 현황</a></li>
				      <li><a href="#tab02" onclick="fun2()">발주 등록</a></li>
				    </ul>
				    
				    <div class="tabcontent">
				      <div id="tab01">
				      <!-- <h4> | 검색 </h4> -->
<!--  발주 현황 시작 -->	
			<div class="contentbody">       
			<div id="top_table" >
            	<div id="table_search">
            	<form name="search" method="get" action="${pageContext.request.contextPath}/wms/placeorder/ordersearch">
            	<span id="select_search">
			        <span>발주번호<input type="text" name="order_num" style="margin-left: 5px;"></span>
			        <span style="margin-left: 10px;">발주일<input type="date" name="order_date" style="margin-left: 5px;"></span>
			   		<span style="margin-left: 10px;">납기일<input type="date" name="due_date" style="margin-left: 5px;"></span>
			        <span style="margin-left: 10px;">품명<input type="text" name="item_name" style="margin-left: 5px;"></span>
			      <button class="btn btn-primary" type="submit" id="IconButton6" style="margin-left: 20px; padding-top: 8px; padding-bottom: 8px;"><a>조회</a></button>
			       </span>
			      </form>
	          </div> 
	          
 				<br>
            
            	<h4> | 발주 내역 목록 </h4>
				<table border="1" id="orderlist_table">
					 <tr><th>발주번호</th><th>품번</th><th>품명</th><th>발주수량</th><th>발주일</th><th>납기일</th><th>입고창고</th><th>단가총계</th><th>부가세</th><th>담당자</th></tr>
					 <c:forEach var="PlaceOrderDTO" items="${orderList }">
						<tr>
							<td style="width: 250px;">${PlaceOrderDTO.order_num }</td>
							<td style="width: 100px;">${PlaceOrderDTO.item_num }</td>
							<td>${PlaceOrderDTO.item_name }</td>
							<td style="width: 100px;">${PlaceOrderDTO.order_qty }</td>
							<td style="width: 150px;">${PlaceOrderDTO.order_date }</td>
							<td style="width: 150px;">${PlaceOrderDTO.due_date }</td>
							<td>${PlaceOrderDTO.whs_num }</td>
							<td>${PlaceOrderDTO.order_sum }</td>
							<td>${PlaceOrderDTO.order_vat }</td>
							<td style="width: 150px;">${PlaceOrderDTO.emp_num }</td>
							</tr>
				 	</c:forEach>
				</table>
				 <c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
					<a href="${pageContext.request.contextPath}/wms/placeorder/ordersearch?pageNum=${pageDTO.startPage - pageDTO.pageBlock }&order_num=${order_num }&order_date=${order_date }&due_date=${due_date }&item_name=${item_name}">[10페이지 이전]</a>
				</c:if>
				
				<c:if test="${pageDTO.currentPage > 0}">
					<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
						<a href="${pageContext.request.contextPath}/wms/placeorder/ordersearch?pageNum=${i}&order_num=${order_num }&order_date=${order_date }&due_date=${due_date }&item_name=${item_name}">${i}</a> 
					</c:forEach>
				</c:if>

				<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
					<a href="${pageContext.request.contextPath}/wms/placeorder/ordersearch?pageNum=${pageDTO.startPage + pageDTO.pageBlock }&order_num=${order_num }&order_date=${order_date }&due_date=${due_date }&item_name=${item_name}">[10페이지 다음]</a>
				</c:if> 
				
				<hr>
	   		
            </div>

				      
				      
				      </div>
				      </div>
				      
<!--  발주 현황 끝 -->  	
				      <div id="tab02">
				      <!-- <h4> | 필수 입력 사항 </h4> -->
<!--  발주 등록 시작 -->

            <div id="top_table" >
            	<form name="OFsearch" method="post" action="${pageContext.request.contextPath}/wms/placeorder/insertOrderPro">
            	<div id="table_search2">
            	<span id="select_search">
			        <span id="order_date_search">발주일<input type="date" id="order_date" class="input-search" name="order_date" readonly style="margin-left: 5px;"></span>
			        <span id="due_date_search" style="margin-left: 10px; font-weight: 300;">납기일<input type="date" id="due_date" class="input-search" name="due_date" onchange="date_check()" style="margin-left: 5px;"></span>
			   		<span id="emp_num_search" style="margin-left: 10px;">담당자<input class="input-search" type="text" name=emp_num id="findEmp_num" value="${sessionScope.emp_num }" onclick="findEmployee()" style="margin-left: 5px;"></span>
			        <span id="whs_num_search" style="margin-left: 10px;">입고창고<input class="input-search" id="findWarehouse" type="text" name="whs_num" style="margin-left: 5px;"></span>
	            </span>
				</div>

 				<br>
            
            	<h4 style="margin-left: 15px;"> | 발주 항목 등록 </h4>
				<table border="1" id="dynamicTable" style="margin-left: 15px;">
					 <tr><th>품번</th><th>품명</th><th>거래처명</th><th>단위</th><th>창고수량</th><th>발주수량</th><th>납입단가</th><th>단가총계</th><th>부가세</th></tr>
					 <tr>
					 	 <td style="width: 100px;"><input type="text" name="item_num" id="item_num" onclick="findProducts()" ></td>
					 	 <td style="width: 150px;"><input type="text" name="item_name" id="item_name" readonly onfocus="this.blur();" onclick="findProducts()" ></td>
					 	 <td style="width: 150px;"><input type="text" name="supplier" id="supplier" readonly onfocus="this.blur();"></td>
					 	 <td style="width: 100px;"><input type="text" name="weight" id="weight" readonly onfocus="this.blur();"></td>
					 	 <td style="width: 100px;"><input type="text" name="stk_qnt" id="stk_qnt" readonly onfocus="this.blur();"></td>
					 	 <td style="width: 100px;"><input type="text" name="order_qty" id="order_qty" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>
					 	 <td style="width: 100px;"><input type="text" name="supply_price" id="supply_price" readonly onfocus="this.blur();"></td>
					 	 <td style="width: 130px;"><input type="text" name="order_sum" id="order_sum" readonly onfocus="this.blur();"></td>
					 	 <td style="width: 130px;"><input type="text" name="order_vat" id="order_vat" readonly onfocus="this.blur();">
					 </tr>
				</table>
				<button class="btn btn-primary" type="button" onclick="check_input()" id="IconButton6" style="margin-left: 50%; padding-top: 8px; padding-bottom: 8px; margin-top: 20px;">전송</button>
				<hr>
	   		
	   			</form>
            </div>

				      
				      
				      </div>
				      </div>
 <!--  발주 등록 끝 -->   			      
				      </div>
				    </div>
				  </div>
<!-- 페이징하실거면 여기서 시작 -->

<!-- 페이징 끝 -->
            </div>
            
          <!--  </div>
          
        </div> -->
        
<!-- 이 밑으로 무언가 쓰지 마세요 페이징도 이 위에서 처리되야함. -->
        
        
<!-- 푸터시작 -->
     <jsp:include page="../../main/footer.jsp" /> 
<!--  푸터 끝 -->

<!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
<script type="text/javascript">
/* 담당자 찾기 (팝업 방법1)*/
 var openWin;

 function findEmployee()
 {
  window.name = "parentForm";
  openWin = window.open("${pageContext.request.contextPath}/wms/placeorder/findEmp_num",
           "childForm", "width=300, height=350,top=300, left=300, resizable = no, scrollbars = no");    
 }

/* 입고창고 찾기 (팝업 방법2)*/
 $('#findWarehouse').on("click",function(e){
	
	let popUrl = "${pageContext.request.contextPath}/wms/placeorder/findWarehouse";
	let popOption = "width = 300px, height=300px, top=300px, left=300px, scrollbars=no, resizable = no";
	
	window.open(popUrl,"입고 창고",popOption);
	
}); 

 /* 상품찾기 */    
 var openWin;

 function findProducts()
 {
  window.name = "parentForm";
  openWin = window.open("${pageContext.request.contextPath}/wms/placeorder/findProducts",
           "childForm", "width=500, height=400,top=300, left=300, resizable = no, scrollbars = no");    
 }

/* 금액 계산하기 */
 $("#order_qty").change(function(){
	var order_qty = document.getElementById('order_qty').value;
	var supply_price = document.getElementById('supply_price').value;
	order_sum.value = order_qty*supply_price;
	order_vat.value = (order_qty*supply_price)*0.1;
	
	});

</script>
<script type="text/javascript">
/* null값 체크 */
function check_input() {
    if (document.OFsearch.order_date.value.trim()==""){
        alert("발주일을 선택하세요");
        document.OFsearch.order_date.focus();
        return;
    }
    if (document.OFsearch.due_date.value.trim()==""){
        alert("납기 희망일을 선택하세요");
        document.OFsearch.due_date.focus();
        return;
    }
    if (document.OFsearch.emp_num.value.trim()==""){
        alert("담당자를 선택하세요");
        document.OFsearch.emp_num.focus();
        return;
    }
    if (document.OFsearch.whs_num.value.trim()==""){
        alert("상품이 입고될 창고를 선택하세요");
        document.OFsearch.whs_num.focus();
        return;
    }
    if (document.OFsearch.item_name.value.trim()==""){
        alert("발주할 상품을 선택하세요");
        document.OFsearch.item_name.focus();
        return;
    }
    if (document.OFsearch.order_qty.value.trim()==""){
        alert("물품의 수량을 선택하세요");
        document.OFsearch.order_qty.focus();
        return;
    }
    alert('발주에 성공하였습니다.');
    document.OFsearch.submit();
 }
</script>
<script>
/* 오늘 날짜 구하기 (발주일 고정값) */
document.getElementById('order_date').valueAsDate = new Date();

/* 내일 날짜 구하기 (납기일 기본값)*/
var today = new Date();
var tomorrow = new Date(today.setDate(today.getDate() + 1));
document.getElementById('due_date').valueAsDate = tomorrow;

/* 납기일 체크 */
function date_check() {
	 if (document.OFsearch.due_date.value.trim() <= document.OFsearch.order_date.value.trim()){
        alert("납기일은 내일 이후로 지정 가능합니다.");
        
        document.OFsearch.due_date.focus();
        document.getElementById('due_date').valueAsDate = tomorrow;
        return;
    } 
}
</script>
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
</html>