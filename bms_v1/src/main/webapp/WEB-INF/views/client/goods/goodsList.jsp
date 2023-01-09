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
				data : {"goodsCd" : goodsCd , "cartGoodsQty" : 1},
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
			location.href = "${contextPath }/order/orderGoods?goodsCd="+goodsCd+"&orderGoodsQty=1";	
		}
		
	}
	
	function getGoodsListByPrice(){
		location.href =  "${contextPath }/goods/searchGoods?method=price&min="+$("#minamount").val() + "&max=" + $("#maxamount").val();
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
                        <a href="${contextPath }/"><i class="fa fa-home"></i> Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="shop__sidebar">
                        <div class="sidebar__categories">
                            <div class="section-title">
                                <h4>Categories</h4>
                            </div>
                            <div class="categories__accordion">
                                <div class="accordion" id="accordionExample">
                                    <div class="card">
                                        <div class="card-heading active">
                                            <a data-toggle="collapse" data-target="#collapseOne">New Books</a>
                                        </div>
                                        <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=new&part=programming">Programming</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=new&part=network">Network</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=new&part=server">Server</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=new&part=cloud">Cloud</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=new&part=bigData">Big Data</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=new&part=artificialIntelligence">Artificial Intelligence</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=new&part=certificate">Certificate</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseTwo">Best Seller</a>
                                        </div>
                                        <div id="collapseTwo" class="collapse" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=best&part=programming">Programming</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=best&part=network">Network</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=best&part=server">Server</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=best&part=cloud">Cloud</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=best&part=bigData">Big Data</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=best&part=artificialIntelligence">Artificial Intelligence</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=best&part=certificate">Certificate</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseThree">Steady Seller</a>
                                        </div>
                                        <div id="collapseThree" class="collapse" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=steady&part=programming">Programming</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=steady&part=network">Network</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=steady&part=server">Server</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=steady&part=cloud">Cloud</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=steady&part=bigData">Big Data</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=steady&part=artificialIntelligence">Artificial Intelligence</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=steady&part=certificate">Certificate</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-heading">
                                            <a data-toggle="collapse" data-target="#collapseFour">General</a>
                                        </div>
                                        <div id="collapseFour" class="collapse" data-parent="#accordionExample">
                                            <div class="card-body">
                                                <ul>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=general&part=programming">Programming</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=general&part=network">Network</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=general&part=server">Server</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=general&part=cloud">Cloud</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=general&part=bigData">Big Data</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=general&part=artificialIntelligence">Artificial Intelligence</a></li>
                                                    <li><a href="${contextPath }/goods/goodsList?sort=general&part=certificate">Certificate</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar__filter">
                            <div class="section-title">
                                <h4>Shop by price</h4>
                            </div>
                            <div class="filter-range-wrap">
                                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="0" data-max="150000" onmouseup="getGoodsListByPrice()"></div>
                                <div class="range-slider">
                                    <div>
                                        <p></p>
                                        <span></span>
                                        <input type="text" id="minamount" style="border:none;" size="7" > ~ 
                                        <input type="text" id="maxamount" style="border:none;" size="7">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar__sizes">
                            <div class="section-title">
                                <h4>Shop by Category</h4>
                            </div>
                            <div class="size__list">
                                <p><a href="${contextPath }/goods/searchGoods?method=keyword&keyword=publishedDt">최신순</a></p>
                                <p><a href="${contextPath }/goods/searchGoods?method=keyword&keyword=highPrice">높은가격순</a></p>
                                <p><a href="${contextPath }/goods/searchGoods?method=keyword&keyword=lowPrice">낮은가격순</a></p>
                                <p><a href="${contextPath }/goods/searchGoods?method=keyword&keyword=discountRate">할인률이 높은순</a></p>
                            </div>
                        </div>
                        <div class="sidebar__color">
                            <div class="section-title">
                                <h4>Shop by Search</h4>
                            </div>
                            <div class="checkout__form__input">
                            	<form action="${contextPath }/goods/searchGoods" method="get">
	                            	<input type="text" name="word">
	                            	<input type="hidden" name="method" value="search">
	                            	<input type="submit" value="검색">
                            	</form>
							</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="row">
                    	<c:choose>
                    		<c:when test="${empty goodsList}">
	                            <div class="product__item">
	                    			<h3>등록된 상품이 없습니다.</h3>
	                            </div>
                    		</c:when>
                    		<c:otherwise>
		                    	<c:forEach var="goodsDto" items="${goodsList }">
			                        <div class="col-lg-4 col-md-6">
			                            <div class="product__item">
			                                <div class="product__item__pic set-bg" data-setbg="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName}">
			                                    <c:choose>
			                                    	<c:when test="${goodsDto.sort eq 'new' }"> <div class="label new">New</div></c:when>
			                                    	<c:when test="${goodsDto.sort eq 'best' }">  <div class="label sale">Best</div></c:when>
			                                    	<c:when test="${goodsDto.sort eq 'steady' }"> <div class="label stockout stockblue">Steady</div></c:when>
			                                    </c:choose>
			                                    <ul class="product__hover">
			                                        <li><a href="${contextPath }/thumbnails?goodsFileName=${goodsDto.goodsFileName}" class="image-popup"><span class="arrow_expand"></span></a></li>
			                                        <li><a href="javascript:processToCart(${goodsDto.goodsCd})"><span class="icon_cart_alt"></span></a></li>
			                                        <li><a href="javascript:processToOrder(${goodsDto.goodsCd})"><span class="icon_bag_alt"></span></a></li>
			                                    </ul>
			                                </div>
			                                <div class="product__item__text">
			                                    <h6>
			                                    	<a href="${contextPath }/goods/goodsDetail?goodsCd=${goodsDto.goodsCd}">${goodsDto.goodsNm }<br>
				                                    ${goodsDto.writer } | ${goodsDto.publisher }
			                                    	</a>
			                                    </h6>
			                                    <div class="product__price" style="text-decoration: line-through; color: gray"><fmt:formatNumber value="${goodsDto.price }"/>원 (${goodsDto.discountRate}%)</div>
			                                    <div class="product__price"><fmt:formatNumber value="${goodsDto.price - goodsDto.price * goodsDto.discountRate / 100 }"/>원</div>
			                                </div>
			                            </div>
			                        </div>
		                    	</c:forEach>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

</body>
</html>