<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<script>
	$().ready(function(){
		
		$("[name='part']").val("${goodsDto.part}");
		$("[name='sort']").val("${goodsDto.sort}");
		
	});

</script>
</head>
<body>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${contextPath }/"><i class="fa fa-home"></i>Admin</a>
                        <span>modify Goods</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <form action="${contextPath }/admin/goods/adminGoodsModify" method="post" enctype="multipart/form-data" class="checkout__form" >
                <input type="hidden" name="goodsCd" value="${goodsDto.goodsCd }">
                    <div class="col-lg-8">
                        <h5>상품수정</h5>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품이미지<span>*</span></p>
                                    <input type="file" name="goodsFileName" >
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품명 <span>*</span></p>
                                    <input type="text" name="goodsNm" value="${goodsDto.goodsNm }">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>작가명 <span>*</span></p>
                                    <input type="text" name="writer" value="${goodsDto.writer }">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>출판사 <span>*</span></p>
                                    <input type="text" name="publisher" value="${goodsDto.publisher }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>가격 <span>*</span></p>
                                    <input type="text" name="price" value="${goodsDto.price }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>할인률 <span>*</span></p>
                                    <input type="text" name="discountRate" value="${goodsDto.discountRate }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>재고 <span>*</span></p>
                                    <input type="text" name="stock" value="${goodsDto.stock }">
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
                                    <input type="text" name="point" value="${goodsDto.point }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>출판일 <span>*</span></p>
                                    <input type="date" name="publishedDt" value='<fmt:formatDate value="${goodsDto.publishedDt }" pattern="yyyy-MM-dd"/>'>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>페이지수 <span>*</span></p>
                                    <input type="text" name="totalPage" value="${goodsDto.totalPage }">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>ISBN <span>*</span></p>
                                    <input type="text" name="isbn" value="${goodsDto.isbn }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>배송비 <span>*</span></p>
                                    <input type="text" name="deliveryPrice" value="${goodsDto.deliveryPrice }">
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
                                    <textarea rows="5" cols="100" name="writerIntro">${goodsDto.writerIntro }</textarea> 
                               		<script>CKEDITOR.replace("writerIntro");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품목차<span>*</span></p>
                                    <textarea rows="5" cols="100" name="contentsOrder" > ${goodsDto.contentsOrder }</textarea> 
                                	<script>CKEDITOR.replace("contentsOrder");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품소개<span>*</span></p>
                                    <textarea rows="5" cols="100" name="intro">${goodsDto.intro }</textarea> 
                                	<script>CKEDITOR.replace("intro");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>출판사평<span>*</span></p>
                                    <textarea rows="5" cols="100" name="publisherComment" >${goodsDto.publisherComment }</textarea> 
                                	<script>CKEDITOR.replace("publisherComment");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>추천사<span>*</span></p>
                                    <textarea rows="5" cols="100" name="recommendation">${goodsDto.recommendation }</textarea> 
                                	<script>CKEDITOR.replace("recommendation");</script>
                                </div>
                            </div>
                        </div>
                    <br>
	                <div align="right">
	                	<button type="submit" class="site-btn"><span class="icon_pencil-edit"></span> 수정</button>
	                </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- Checkout Section End -->

</body>
 