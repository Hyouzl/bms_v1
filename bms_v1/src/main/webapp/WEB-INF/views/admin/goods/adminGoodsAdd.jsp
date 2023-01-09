<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
</head>
<body>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${contextPath }/"><i class="fa fa-home"></i>Admin</a>
                        <span>add Goods</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <form action="${contextPath }/admin/goods/adminGoodsAdd" method="post" enctype="multipart/form-data" class="checkout__form" >
                    <div class="col-lg-8">
                        <h5>상품등록</h5>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품이미지<span>*</span> <span class="icon_upload"></span> </p>
                                    <input type="file" name="goodsFileName">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품명 <span>*</span></p>
                                    <input type="text" name="goodsNm" placeholder="상품명을 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>작가명 <span>*</span></p>
                                    <input type="text" name="writer" placeholder="작가명을 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>출판사 <span>*</span></p>
                                    <input type="text" name="publisher" placeholder="출판사를 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>가격 <span>*</span></p>
                                    <input type="text" name="price" placeholder="가격을 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>할인률 <span>*</span></p>
                                    <input type="text" name="discountRate" placeholder="할인률을 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>재고 <span>*</span></p>
                                    <input type="text" name="stock" placeholder="재고를 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>분류 <span>*</span></p>
                                    <select name="sort">
                                    	<option value="general">일반</option>
                                    	<option value="new">신간</option>
                                    	<option value="best">베스트셀러</option>
                                    	<option value="steady">스테디셀러</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>적립포인트(P) <span>*</span></p>
                                    <input type="text" name="point" placeholder="적립 포인트(P)를 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>출판일 <span>*</span></p>
                                    <input type="date" name="publishedDt">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>페이지수 <span>*</span></p>
                                    <input type="text" name="totalPage" placeholder="페이지수를 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>ISBN <span>*</span></p>
                                    <input type="text" name="isbn" placeholder="ISBN을 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>배송비 <span>*</span></p>
                                    <input type="text" name="deliveryPrice" placeholder="배송비를 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>분야<span>*</span></p>
                                    <select name="part">
                                    	<option value="programming">프로그래밍</option>
                                    	<option value="network">네트워크</option>
                                    	<option value="server">서버</option>
                                    	<option value="cloud">클라우드</option>
                                    	<option value="bigData">빅데이터</option>
                                    	<option value="artificialIntelligence">인공지능</option>
                                    	<option value="certificate">자격증</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>저자소개<span>*</span></p>
                                    <textarea rows="5" cols="100" name="writerIntro" placeholder="저자소개를 입력하세요."></textarea> 
                               		<script>CKEDITOR.replace("writerIntro");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품목차<span>*</span></p>
                                    <textarea rows="5" cols="100" name="contentsOrder" placeholder="상품목차를 입력하세요."></textarea> 
                                	<script>CKEDITOR.replace("contentsOrder");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품소개<span>*</span></p>
                                    <textarea rows="5" cols="100" name="intro" placeholder="상품소개를 입력하세요."></textarea> 
                                	<script>CKEDITOR.replace("intro");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>출판사평<span>*</span></p>
                                    <textarea rows="5" cols="100" name="publisherComment" placeholder="출판사평을 입력하세요."></textarea> 
                                	<script>CKEDITOR.replace("publisherComment");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>추천사<span>*</span></p>
                                    <textarea rows="5" cols="100" name="recommendation" placeholder="추천사를 입력하세요."></textarea> 
                                	<script>CKEDITOR.replace("recommendation");</script>
                                </div>
                            </div>
                        </div>
                        <br>
		                <div align="right">
		                	<button type="submit" class="site-btn"><span class="icon_plus"></span> 등록</button>
		                </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- Checkout Section End -->

</body>
 