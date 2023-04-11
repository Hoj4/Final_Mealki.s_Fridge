<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1" id="orderlist_table">
	<tr>
		<th>작업지시번호</th>
		<th>수주번호</th>
		<th>작업지시자</th>
		<th>작업지시일자</th>
		<th>납품예정일</th>
		<th>라인명</th>
		<th>품목명</th>
		<th>지시수량</th>
		<th>생산수량</th>
		<th>작업상태</th>
	</tr>
	<c:forEach var="WorkorderDTO" items="${workorderList}">
		  <c:if test="${WorkorderDTO.wo_state == param.state}">
			<tr onClick="WoUpdate('${WorkorderDTO.wo_num}');">
				<td>${WorkorderDTO.wo_num}</td>
				<td>${WorkorderDTO.business_num}</td>
				<td>${WorkorderDTO.wo_empname}</td>
				<td>${WorkorderDTO.wo_date}</td>
				<td>${WorkorderDTO.out_date}</td>
				<td>${WorkorderDTO.manu_name}</td>
				<td>${WorkorderDTO.item_name}</td>
				<td>${WorkorderDTO.wo_qty}</td>
				<td>${WorkorderDTO.pr_sum}</td>
		        <td>
					<c:if test="${WorkorderDTO.wo_state == '대기'}">
						<div class="btn btn-secondary btn-rounded" id="IconButton6" style="padding-left:8px;  padding-right:8px; padding-top: 6px; padding-bottom: 6px;">대기</div>
					</c:if>
					<c:if test="${WorkorderDTO.wo_state == '진행중'}">
						<div class="btn btn-danger btn-rounded" id="IconButton6" style="padding-left:8px;  padding-right:8px; padding-top: 6px; padding-bottom: 6px;">진행중</div>
					</c:if>
					<c:if test="${WorkorderDTO.wo_state == '완료'}">
						<div class="btn btn-success btn-rounded" id="IconButton6" style="padding-left:8px;  padding-right:8px; padding-top: 6px; padding-bottom: 6px;">완료</div>
					</c:if>
				</td>
			</tr>
		</c:if>
	</c:forEach>

</table>

