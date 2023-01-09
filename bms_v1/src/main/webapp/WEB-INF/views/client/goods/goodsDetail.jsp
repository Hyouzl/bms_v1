<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="sessionId" value="${sessionScope.memberId }"/>		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	function processToCart(goodsCd) {
		
		if ("${sessionId == null}" == "true") {
			alert("로그인을 진행해주세요.");
			location.href = "${contextPath }/member/login";
		}
		else {
			
			$.ajax({
				url : "${contextPath }/myPage/addCart",
				method : "get",
				data : {"goodsCd" : goodsCd , "cartGoodsQty" : $("#orderGoodsQty").val()},
				success : function(result) {
					
					if (result == "duple") {
						alert("이미 추가된 품목입니다.");
					}
					else {
						alert("장바구니에 추가되었습니다.");
					}
					
				}
			})
			
		}
	}
	
	function processToOrder(goodsCd) {
		
		if ("${sessionId == null}" == "true") {
			alert("로그인을 진행해주세요.");
			location.href = "${contextPath }/member/login";
		}
		else {
			location.href = "${contextPath }/order/orderGoods?goodsCd="+goodsCd+"&orderGoodsQty=" + $("#orderGoodsQty").val();	
		}
		
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
                        <a href="${contextPath }/"><i class="fa fa-home"></i>${goodsDto.sort }</a>
                        <a href="#">${goodsDto.publisher } </a>
                        <span>${goodsDto.goodsNm }</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__left product__thumb nice-scroll">
                            <a class="pt active" href="#product-1">
                                <img src="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName }" >
                            </a>
                            <a class="pt" href="#product-2">
                                <img src="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName }" >
                            </a>
                            <a class="pt" href="#product-3">
                                <img src="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName }" >
                            </a>
                            <a class="pt" href="#product-4">
                                <img src="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName }" >
                            </a>
                        </div>
                        <div class="product__details__slider__content">
                            <div class="product__details__pic__slider owl-carousel">
                                <img data-hash="product-1" class="product__big__img" src="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName }" >
                                <img data-hash="product-2" class="product__big__img" src="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName }" >
                                <img data-hash="product-3" class="product__big__img" src="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName }" >
                                <img data-hash="product-4" class="product__big__img" src="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName }" >
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3>${goodsDto.goodsNm } <span>출판사 : ${goodsDto.publisher } | 저자 : ${goodsDto.writer }</span></h3>
                        <div class="product__details__price"><fmt:formatNumber value="${goodsDto.price - (goodsDto.price * goodsDto.discountRate / 100)}" /><span><fmt:formatNumber value="${goodsDto.price }"/></span></div>
                        <div class="product__details__button">
                            <div class="quantity">
                                <span>수량 : </span>
                                <div class="pro-qty">
                                    <input type="text" id="orderGoodsQty" name="orderGoodsQty" value="1"> &emsp;&emsp;
                                </div>
                            </div>
                            <a href="javascript:processToCart(${goodsDto.goodsCd });" class="cart-btn"><span class="icon_cart_alt"></span> 장바구니</a>
                            <a href="javascript:processToOrder(${goodsDto.goodsCd });" class="cart-btn"><span class="icon_bag_alt"></span> 주문하기</a>
                        </div>
                        <div class="product__details__widget">
                            <ul>
                                <li>
                                    <span>출판일 : </span>
                                    <p><fmt:formatDate value="${goodsDto.publishedDt }" pattern="yyyy-MM-dd"/> </p>
                                </li>
                                <li>
                                    <span>등록일 : </span>
                                    <p><fmt:formatDate value="${goodsDto.enrollDt }" pattern="yyyy-MM-dd"/></p>
                                </li>
                                <li>
                                    <span>포인트 : </span>
                                    <p>${goodsDto.point }P</p>
                                </li>
                                <li>
                                    <span>할인률 : </span>
                                    <p>${goodsDto.discountRate }%</p>
                                </li>
                                <li>
                                    <span>배송비 : </span>
                                    <p>${goodsDto.deliveryPrice }원</p>
                                </li>
                                <li>
                                    <span>총 페이지수 : </span>
                                    <p>${goodsDto.totalPage } 페이지</p>
                                </li>
                                <li>
                                    <span>재고 : </span>
                                    <p>${goodsDto.stock } 개</p>
                                </li>
                                <li>
                                    <span>ISBN : </span>
                                    <p>${goodsDto.isbn }</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                           <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">상품소개</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">상품목차</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">저자소개</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">출판사 상품평가</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-5" role="tab">추천사</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                        	<div class="tab-pane active" id="tabs-1" role="tabpanel">
                                ${goodsDto.intro}
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                            	${goodsDto.contentsOrder }
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                            	${goodsDto.writerIntro }
                            </div>
                            <div class="tab-pane" id="tabs-4" role="tabpanel">
                            	${goodsDto.publisherComment }
                            </div>
                            <div class="tab-pane" id="tabs-5" role="tabpanel">
                            	${goodsDto.recommendation }
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="related__title">
                        <h5>RELATED PRODUCTS</h5>
                    </div>
                </div>
                <c:forEach var="relatedGoods" items="${relatedGoodsList }">
	                <div class="col-lg-3 col-md-4 col-sm-6">
	                    <div class="product__item">
	                        <div class="product__item__pic set-bg" data-setbg="${contextPath }/thumbnails?goodsFileName=${relatedGoods.goodsFileName}">
	                            <c:choose>
                                   	<c:when test="${relatedGoods.sort eq 'new' }"> <div class="label new">New</div></c:when>
                                   	<c:when test="${relatedGoods.sort eq 'best' }">  <div class="label sale">Best</div></c:when>
                                   	<c:when test="${relatedGoods.sort eq 'steady' }"> <div class="label stockout stockblue">Steady</div></c:when>
                                </c:choose>
	                            <ul class="product__hover">
                                     <li><a href="${contextPath }/thumbnails?goodsFileName=${relatedGoods.goodsFileName}" class="image-popup"><span class="arrow_expand"></span></a></li>
                                     <li><a href="javascript:processToCart(${relatedGoods.goodsCd})"><span class="icon_cart_alt"></span></a></li>
                                     <li><a href="javascript:processToOrder(${relatedGoods.goodsCd})"><span class="icon_bag_alt"></span></a></li>
                                </ul>
	                        </div>
	                        <div class="product__item__text">
	                           <h6>
                               	<a href="${contextPath }/goods/goodsDetail?goodsCd=${relatedGoods.goodsCd}">${relatedGoods.goodsNm }<br>
                                	${relatedGoods.writer } | ${relatedGoods.publisher }
                               	</a>
                               </h6>
                               <div class="product__price" style="text-decoration: line-through; color: gray"><fmt:formatNumber value="${relatedGoods.price }"/>원 (${relatedGoods.discountRate}%)</div>
                               <div class="product__price"><fmt:formatNumber value="${relatedGoods.price - relatedGoods.price * relatedGoods.discountRate / 100 }"/>원</div>
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
                
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
</body>
</html>