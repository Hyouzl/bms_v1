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
	 <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo" >
                        <a href="${contextPath}/"><img src="${contextPath }/resources/bootstrap/img/logo.PNG"></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="${contextPath }/"><span class="icon_house"></span> Home</a></li>
                            <li><a href="${contextPath }/goods/goodsList?sort=all&part=all">Shop</a></li>
                            <li>&emsp;&emsp;&emsp;</li>
                        	<c:choose>
                        		<c:when test="${sessionScope.role eq 'admin'}">
		                             <li><a href="#"><span class="icon_menu"></span> Management</a>
		                                <ul class="dropdown">
	                        			 <li><a href="${contextPath }/admin/goods/adminGoodsList">Goods Management</a></li>
	                        			 <li><a href="${contextPath }/admin/member/adminMemberList">User Management</a></li>
	                        			 <li><a href="${contextPath }/admin/order/adminOrderList">Order Management</a></li>
	                        			 <li><a href="${contextPath }/contactList">Contact Management</a></li>
		                                </ul>
		                             </li>
                        		</c:when>
                        		<c:otherwise>
		                             <li><a href="#"><span class="icon_menu"></span> My Pages</a>
		                                <ul class="dropdown">
			                             <li><a href="${contextPath }/myPage/myInfo?memberId=${sessionScope.memberId}"><span class="icon_info"></span> My Info</a></li>
			                             <li><a href="${contextPath }/myPage/myCartList"><span class="icon_cart"></span> My Cart</a></li>
			                             <li><a href="${contextPath }/myPage/myOrderList"><span class="icon_chat_alt"></span> My Order</a></li>
		                             	</ul>
		                             </li>
				                    <li><a href="${contextPath}/contact">Contact</a></li>
                        		</c:otherwise>
                        	</c:choose>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__right">
                    	<c:choose>
                    		<c:when test="${sessionScope.memberId eq null }">
		                        <div class="header__right__auth">
		                            <a href="${contextPath }/member/login">Login</a>
		                            <a href="${contextPath }/member/register">Register</a>
		                        </div>
                    		</c:when>
                    		<c:otherwise>
		                        <div class="header__right__auth">
		                            <a href="${contextPath }/member/logout">logout</a>
		                        </div>
                    		</c:otherwise>
                    	</c:choose>
                        <ul class="header__right__widget">
                            <li><span class="icon_search search-switch"></span></li>
                            <li><a href="${contextPath }/myPage/myCartList"><span class="icon_cart_alt"></span>
                                <c:choose>
                                	<c:when test="${sessionScope.role == 'client'}">
		                                <div class="tip">${sessionScope.myCartCnt }</div>
                                	</c:when>
                                	<c:otherwise>
                                		<div class="tip">0</div>
                                	</c:otherwise>
                                </c:choose>
                            </a></li>
                            <li><a href="${contextPath }/myPage/myOrderList"><span class="icon_bag_alt"></span>
                                 <c:choose>
                                	<c:when test="${sessionScope.role == 'client' }">
		                                <div class="tip">${sessionScope.myOrderCnt }</div>
                                	</c:when>
                                	<c:otherwise>
                                		<div class="tip">0</div>
                                	</c:otherwise>
                                </c:choose>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="canvas__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

</body>
</html>