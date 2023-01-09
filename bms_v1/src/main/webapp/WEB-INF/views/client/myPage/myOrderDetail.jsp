<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	$().ready(function(){
		
		$("[name='cardCompanyNm']").val("${myOrder.cardCompanyNm}");
		$("[name='payMethod']").val("${myOrder.payMethod}");
		$("[name='cardPayMonth']").val("${myOrder.cardPayMonth}");
		$("[name='deliveryStatus']").val("${myOrder.deliveryStatus}");
		
		$("[name='giftWrapping']").each(function(){
			if ($(this).val() == "${myOrder.giftWrapping}"){
				$(this).prop("checked", true);
			}
		})
		$("[name='deliveryMethod']").each(function(){
			if ($(this).val() == "${myOrder.deliveryMethod}"){
				$(this).prop("checked", true);
			}
		})
		
		
	});

</script>
</head>
<body>
<!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
             <form action="${contextPath }/order/orderGoods" method="post" class="checkout__form">
                <div class="row">
                	<div class="col-lg-12">
                        <div class="checkout__order">
                            <h5>Your order</h5>
                            <div class="checkout__order__product">
                                <ul>
                                    <li>
                                        <span class="top__text">Product</span>
                                        <span class="top__text__right">Price</span>
                                    </li>
                                    <li>01. ${myOrder.goodsNm } / ${myOrder.orderGoodsQty }(개) <span><fmt:formatNumber value="${myOrder.price - myOrder.price * myOrder.discountRate / 100 + myOrder.deliveryPrice}"/> </span></li>
                                    <br>
                                    <li>Price <span><fmt:formatNumber value="${myOrder.price - myOrder.price * myOrder.discountRate / 100}"/>원</span></li>
                                    <li>DeliveryPrice <span><fmt:formatNumber value="${myOrder.deliveryPrice}"/>원</span></li>
                                    <br>
                                    <li>Point <span><fmt:formatNumber value="${myOrder.point}"/>P적립</span></li>
                                </ul>
                            </div>
                            <div class="checkout__order__total">
                                <ul>
                                    <li>Total <span><fmt:formatNumber value="${myOrder.price - myOrder.price * myOrder.discountRate / 100 + myOrder.deliveryPrice}"/>원</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
	                	<br><br><br>
                        <h5>주문상세</h5>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>주문자 성함 </p>
                                    <input type="text" name="ordererNm" value="${myOrder.ordererNm }" disabled>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>주문자 연락처 </p>
                                    <input type="text" name="myOrderHp" value="${myOrder.ordererHp }" disabled>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>받는분 이름 </p>
                                    <input type="text" name="receiverNm" value="${myOrder.receiverNm }" disabled>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>받는분 연락처 </p>
                                    <input type="text" name="receiverHp" value="${myOrder.receiverHp }" disabled>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                               <div class="checkout__form__input">
                                    <p>포장여부 </p>
                                    <input type="text" name="giftWrapping" value="${myOrder.giftWrapping }" disabled>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>배송방법 </p>
                                    <input type="text" name="deliveryMethod" value="${myOrder.deliveryMethod }" disabled>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>지불방법 </p>
                                    <input type="text" name="payMethod" value="${myOrder.payMethod }" disabled>
                                </div>
                            </div>
                            <c:choose>
                            	<c:when test="${myOrder.payMethod eq 'card'}">
		                            <div class="col-lg-6 col-md-6 col-sm-6">
		                                <div class="checkout__form__input">
		                                    <p>카드회사 </p>
		                                    <input type="text" name="cardCompanyNm" value="${myOrder.cardCompanyNm }" disabled>
		                                </div>
		                            </div>
		                            <div class="col-lg-6 col-md-6 col-sm-6">
		                            	<div class="checkout__form__input">
		                                    <p>할부개월 </p>
		                                    <c:choose>
		                                    	<c:when test="${myOrder.cardPayMonth == 0}">
		                                    		<input type="text" name="cardPayMonth" value="일시불" disabled>
		                                    	</c:when>
		                                    	<c:otherwise>
				                                    <input type="text" name="cardPayMonth" value="${myOrder.cardPayMonth }개월" disabled>
		                                    	</c:otherwise>
		                                    </c:choose>
		                                </div>
		                            </div>
                            	</c:when>
                            	<c:otherwise>
									<div class="col-lg-6 col-md-6 col-sm-6">
		                                <div class="checkout__form__input">
		                                    <p>구매자연락처 </p>
		                                    <input type="text" name="paymyOrderHp" value="${myOrder.ordererHp }" disabled>
		                                </div>
		                            </div>                            	
                            	</c:otherwise>
                            </c:choose>
                             <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                	<div class="checkout__order__input">
	                                    <p>배송상태 </p>
	                                    <input type="text" name="deliveryStatus" value="${myOrder.deliveryStatus }" disabled>
	                                </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <p>배송메세지 </p>
                                    <input type="text" name="deliveryMessage" disabled>
                                </div>
                            </div>
                            <br><br><br>
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <p>우편번호 </p>
                                    <input type="text" id="zipcode" name="zipcode" value="${myOrder.zipcode }" style="width: 30%;" disabled>
                                    <input type="button" value="주소 검색" onclick="execDaumPostcode();" style="width: 20%; padding-left: 0" disabled>
                                </div>
                                <div class="checkout__form__input">
                                    <p>도로명 주소 </p>
                                    <input type="text" id="roadAddress" name="roadAddress" value="${myOrder.roadAddress }" disabled>
                                </div>
                                <div class="checkout__form__input">
                                    <p>지번 주소 </p>
                                    <input type="text" id="jibunAddress" name="jibunAddress" value="${myOrder.jibunAddress }" disabled>
                                </div>
                                <div class="checkout__form__input">
                                    <p>나머지 주소 </p>
                                    <input type="text" id="namujiAddress" name="namujiAddress" value="${myOrder.namujiAddress }" disabled>
                                </div>
                            </div>                         
                        </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- Checkout Section End -->
</body>
</html>