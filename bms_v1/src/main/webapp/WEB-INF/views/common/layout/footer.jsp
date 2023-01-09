<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Footer Section Begin -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-7">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="${contextPath }/index.html"><img src="${contextPath }/resources/bootstrap/img/logo.PNG" alt=""></a>
                    </div>
                    <p>People make books and books make people.</p>
                    <div class="footer__payment">
                        <a href="#"><img src="${contextPath }/resources/bootstrap/img/payment/payment-1.png" alt=""></a>
                        <a href="#"><img src="${contextPath }/resources/bootstrap/img/payment/payment-2.png" alt=""></a>
                        <a href="#"><img src="${contextPath }/resources/bootstrap/img/payment/payment-3.png" alt=""></a>
                        <a href="#"><img src="${contextPath }/resources/bootstrap/img/payment/payment-4.png" alt=""></a>
                        <a href="#"><img src="${contextPath }/resources/bootstrap/img/payment/payment-5.png" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-5">
                <div class="footer__widget">
                    <h6>Quick links</h6>
                    <ul>
                        <li><a href="${contextPath }/goods/goodsList?sort=all&part=all">Shop</a></li>
                        <li><a href="${contextPath}/contact">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-4">
                <div class="footer__widget">
                    <h6>Account</h6>
                    <ul>
                        <li><a href="${contextPath }/myPage/myInfo?memberId=${sessionScope.memberId}">My Info</a></li>
                        <li><a href="${contextPath }/myPage/myCartList">My Cart</a></li>
                        <li><a href="${contextPath }/myPage/myOrderList">My Order</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-8">
                <div class="footer__newslatter">
                    <h6>QUICK BOOKS SEARCH</h6>
                    <form action="${contextPath }/goods/searchGoods" method="get">
                        <input type="text" name="word" placeholder="search book quickly">
                        <input type="hidden" name="method" value="search">
                        <button type="submit" class="site-btn"><span class="icon_search"></span></button>
                    </form>
                    <div class="footer__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                <div class="footer__copyright__text">
                    <p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                </div>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

</body>
</html>