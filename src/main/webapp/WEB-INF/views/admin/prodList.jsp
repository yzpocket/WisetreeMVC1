<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/top" />

	<div class="container" style="text-align: center">

		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center m-4" style="margin: 1em">::Product List
					[Admin Page]:::</h1>
	
				<table class="table table-striped" id="products">
					<thead>
						<tr>
							<th>상품번호</th>
							<th>카테고리</th>
							<th data-sort="string">상품명</th>
							<th>이미지</th>
							<th data-sort="string">가 격</th>
							<th>수정|삭제</th>
						</tr>
					</thead>
					<tbody>
						<!-- ------------------------ -->
					<c:if test="${list eq null or empty list}">
						<tr>
							<td colspan="6">등록된 상품이 없습니다</td>
						</tr>
					</c:if>
					<c:if test="${list ne null or not empty list}">
						<c:forEach var="prod" items="${list}">
						<tr>
							<td>${prod.itemNo}</td>
							<td>
							${prod.up_Name}>${prod.down_Name}
							</td>
							<td>${prod.itemName}</td>
							<td width="15%">
							<a href="prodDetail2?itemNo=${prod.itemNo}" target="_blank">
					
							
							<img src="../resources/product_images/${prod.itemImage1}" 
							style="width:90%;margin:auto" class="img-fluid">
							
							</a>
							</td>
							<td><del>정 가:
							<fmt:formatNumber value="${prod.price}" pattern="###,###" />
							원</del> 
							<br> 
							<b class="text-primary">판매가 :
							<fmt:formatNumber value="${prod.saleprice}" pattern="###,###" />
							원</b><br> 
							<span class="badge badge-danger">${prod.percent} %할인</span>
							</td>
							<td>
							<a href="javascript:edit('${prod.itemNo}')">수정</a>| 
							<a href="#" onclick="remove('${prod.itemNo}')">삭제</a>| 
						</tr>
						</c:forEach>
					</c:if>
	
						<!-- ------------------------ -->
					</tbody>
	
				</table>
			</div>
		</div>
	
	</div>


<c:import url="/foot" />