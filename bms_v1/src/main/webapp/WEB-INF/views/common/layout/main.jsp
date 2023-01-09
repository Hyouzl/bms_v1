<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 p-0">
                    <div class="categories__item categories__large__item set-bg"
                    data-setbg="${contextPath }/resources/bootstrap/img/main.PNG">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="${contextPath }/resources/bootstrap/img/newbook.PNG">
                            <div class="categories__text">
                                <h4>New Books</h4>
                                <p style="color:black">${newBookCnt } items</p>
                                <a href="${contextPath }/goods/goodsList?sort=new&part=all">Shop now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="${contextPath }/resources/bootstrap/img/bestseller.PNG">
                            <div class="categories__text">
                                <h4>Best Seller</h4>
                                <p style="color:black">${bestSellerCnt } items</p>
                                <a href="${contextPath }/goods/goodsList?sort=best&part=all">Shop now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="${contextPath }/resources/bootstrap/img/steadyseller.PNG">
                            <div class="categories__text">
                                <h4>Steady Seller</h4>
                                <p style="color:black">${steadySellerCnt } items</p>
                                <a href="${contextPath }/goods/goodsList?sort=steady&part=all">Shop now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0">
                        <div class="categories__item set-bg" data-setbg="${contextPath }/resources/bootstrap/img/generalbook.PNG">
                            <div class="categories__text">
                                <h4>General Book</h4>
                                <p style="color:black">${generalBookCnt } items</p>
                                <a href="${contextPath }/goods/goodsList?sort=general&part=all">Shop now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Banner Section Begin -->
<section class="banner set-bg" data-setbg="${contextPath }/resources/client/img/banner/banner-1.jpg">
    <div class="container">
        <div class="row">
            <div class="col-xl-7 col-lg-8 m-auto">
                <div class="banner__slider owl-carousel">
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>People make books and books make people.</span>
                            <h1>New Books</h1>
                            <a href="${contextPath }/goods/goodsList?sort=new&part=all">Shop now</a>
                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>People make books and books make people.</span>
                            <h1>Best Seller</h1>
                            <a href="${contextPath }/goods/goodsList?sort=best&part=all">Shop now</a>
                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>People make books and books make people.</span>
                            <h1>Steady Seller</h1>
                            <a href="${contextPath }/goods/goodsList?sort=steady&part=all">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner Section End -->

<!-- Trend Section Begin -->
<section class="trend spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>New Books</h4>
                    </div>
                    <c:forEach var="newBooks" items="${newBooksInfo }">
	                    <div class="trend__item">
	                        <div class="trend__item__pic">
	                            <img src="${contextPath }/thumbnails?goodsFileName=${newBooks.goodsFileName }" width="50" height="50">
	                        </div>
	                        <div class="trend__item__text">
	                            <h6><a href="${contextPath }/goods/goodsDetail?goodsCd=${newBooks.goodsCd}">${newBooks.goodsNm }</a></h6>
	                            <div class="product__price"><fmt:formatNumber value="${newBooks.price - newBooks.price * newBooks.discountRate / 100}"/>원<span style="text-decoration: line-through; color: gray"> (<fmt:formatNumber value="${newBooks.price }"/>원)</span></div>
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Best seller</h4>
                    </div>
                    <c:forEach var="bestBooks" items="${bestBooksInfo }">
	                    <div class="trend__item">
	                        <div class="trend__item__pic">
	                            <img src="${contextPath }/thumbnails?goodsFileName=${bestBooks.goodsFileName }" width="50" height="50">
	                        </div>
	                        <div class="trend__item__text">
	                            <h6><a href="${contextPath }/goods/goodsDetail?goodsCd=${bestBooks.goodsCd}">${bestBooks.goodsNm }</a></h6>
	                            <div class="product__price"><fmt:formatNumber value="${bestBooks.price - bestBooks.price * bestBooks.discountRate / 100}"/>원<span style="text-decoration: line-through; color: gray"> (<fmt:formatNumber value="${bestBooks.price }"/>원)</span></div>
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="trend__content">
                    <div class="section-title">
                        <h4>Steady Seller</h4>
                    </div>
                    <c:forEach var="steadyBooks" items="${steadyBooksInfo }">
                    	<div class="trend__item__pic">
	                            <img src="${contextPath }/thumbnails?goodsFileName=${steadyBooks.goodsFileName }" width="50" height="50">
	                        </div>
	                    <div class="trend__item">
	                        <div class="trend__item__text">
	                            <h6><a href="${contextPath }/goods/goodsDetail?goodsCd=${steadyBooks.goodsCd}">${steadyBooks.goodsNm }</a></h6>
	                            <div class="product__price"><fmt:formatNumber value="${steadyBooks.price - steadyBooks.price * steadyBooks.discountRate / 100}"/>원<span style="text-decoration: line-through; color: gray"> (<fmt:formatNumber value="${steadyBooks.price }"/>원)</span></div>
	                        </div>
	                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Trend Section End -->

<!-- Discount Section Begin -->
<section class="discount">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="discount__pic">
                    <img src="${contextPath }/resources/bootstrap/img/discount.PNG" alt="">
                </div>
            </div>
            <div class="col-lg-6 p-0">
                <div class="discount__text">
                    <div class="discount__text__title">
                        <span>Discount</span>
                        <h2>Summer 2022</h2>
                        <h5><span>Sale</span> 50%</h5>
                    </div>
                    <div class="discount__countdown" id="countdown-time">
                        <div class="countdown__item">
                            <span>22</span>
                            <p>Days</p>
                        </div>
                        <div class="countdown__item">
                            <span>18</span>
                            <p>Hour</p>
                        </div>
                        <div class="countdown__item">
                            <span>46</span>
                            <p>Min</p>
                        </div>
                        <div class="countdown__item">
                            <span>05</span>
                            <p>Sec</p>
                        </div>
                    </div>
                    <a href="#">Shop now</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Discount Section End -->

<!-- Services Section Begin -->
<section class="services spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-car"></i>
                    <h6>Free Shipping</h6>
                    <p>For all oder over $99</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-money"></i>
                    <h6>Money Back Guarantee</h6>
                    <p>If good have Problems</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-support"></i>
                    <h6>Online Support 24/7</h6>
                    <p>Dedicated support</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-headphones"></i>
                    <h6>Payment Secure</h6>
                    <p>100% secure payment</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->
</body>
</html>