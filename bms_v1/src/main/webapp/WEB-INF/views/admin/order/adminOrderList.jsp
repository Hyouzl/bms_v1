<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<html>
<head>
<meta  charset="utf-8">
<script>
	function gerateOrderExcelExport() {
		location.href = "${contextPath}/admin/order/orderExcelExport";
	}
</script>
</head>
<body>
	<!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${contextPath }/"><i class="fa fa-home"></i> Admin</a>
                        <span>Order List</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Cart Section Begin -->
    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                	<div class="cart__btn update__btn" align="right">
						<a href="javascript:gerateOrderExcelExport();"><span class="icon_folder_download"></span>Excel</a>
					</div>
                    <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th width="70%">주문정보</th>
                                    <th width="10%">주문자</th>
                                    <th width="10%">주문날짜</th>
                                    <th width="10%">배송상태</th>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:choose>
                            		<c:when test="${empty orderList}">
                            			<tr>
                            				<td colspan="4" align="center"><h6>주문내역이 없습니다.</h6></td>
                            			</tr>
                            		</c:when>
                            		<c:otherwise>
		                            	<c:forEach var="order" items="${orderList }">
		                            		 <tr>
                                    			<td class="cart__product__item">
			                                        <img src="${contextPath }/thumbnails?goodsFileName=${order.goodsFileName }" width="70" height="70">
			                                        <div class="cart__product__item__title">
		                                            	<h6>
		                                            		<a href="${contextPath }/myPage/myOrderDetail?orderCd=${order.orderCd}&memberId=${order.memberId}">
		                                            		상품명 : ${order.goodsNm }<br>
		                                            		${order.writer } / ${order.publisher }<br>
		                                            		상품가격 : <fmt:formatNumber value="${order.price }"/> 원 / 주문수량 : ${order.orderGoodsQty }개
		                                        			</a>
		                                        		</h6>
			                                        </div>
			                                    </td>
			                                    <td><h6><strong>${order.memberId }</strong></h6></td>
			                                    <td><h6><fmt:formatDate value="${order.payOrderTime }" pattern="yyyy-MM-dd"/></h6> </td>
			                                    <td><h6>${order.deliveryStatus }</h6></td>
			                                </tr>
		                            	</c:forEach>
                            		</c:otherwise>
                            	</c:choose>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Cart Section End -->
</body>
</html>