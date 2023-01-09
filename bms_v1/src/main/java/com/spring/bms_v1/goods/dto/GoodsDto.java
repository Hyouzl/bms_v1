package com.spring.bms_v1.goods.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class GoodsDto {
	
	private int goodsCd;
	private String goodsNm;
	private String writer;
	private int price;
	private int discountRate;
	private int stock;
	private String publisher;
	private String sort;
	private int point;
	private Date publishedDt;
	private int totalPage;
	private String isbn;
	private int deliveryPrice;
	private String part;
	private String writerIntro;
	private String contentsOrder;
	private String intro;
	private String publisherComment;
	private String recommendation;
	private String goodsFileName;
	private Date enrollDt;
	
	public int getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(int goodsCd) {
		this.goodsCd = goodsCd;
	}
	public String getGoodsNm() {
		return goodsNm;
	}
	public void setGoodsNm(String goodsNm) {
		this.goodsNm = goodsNm;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getPublishedDt() {
		return publishedDt;
	}
	public void setPublishedDt(Date publishedDt) {
		this.publishedDt = publishedDt;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public int getDeliveryPrice() {
		return deliveryPrice;
	}
	public void setDeliveryPrice(int deliveryPrice) {
		this.deliveryPrice = deliveryPrice;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	public String getWriterIntro() {
		return writerIntro;
	}
	public void setWriterIntro(String writerIntro) {
		this.writerIntro = writerIntro;
	}
	public String getContentsOrder() {
		return contentsOrder;
	}
	public void setContentsOrder(String contentsOrder) {
		this.contentsOrder = contentsOrder;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getPublisherComment() {
		return publisherComment;
	}
	public void setPublisherComment(String publisherComment) {
		this.publisherComment = publisherComment;
	}
	public String getRecommendation() {
		return recommendation;
	}
	public void setRecommendation(String recommendation) {
		this.recommendation = recommendation;
	}
	public String getGoodsFileName() {
		return goodsFileName;
	}
	public void setGoodsFileName(String goodsFileName) {
		this.goodsFileName = goodsFileName;
	}
	public Date getEnrollDt() {
		return enrollDt;
	}
	public void setEnrollDt(Date enrollDt) {
		this.enrollDt = enrollDt;
	}
	
	@Override
	public String toString() {
		return "GoodsDto [goodsCd=" + goodsCd + ", goodsNm=" + goodsNm + ", writer=" + writer + ", price=" + price
				+ ", discountRate=" + discountRate + ", stock=" + stock + ", publisher=" + publisher + ", sort=" + sort
				+ ", point=" + point + ", publishedDt=" + publishedDt + ", totalPage="
				+ totalPage + ", isbn=" + isbn + ", deliveryPrice=" + deliveryPrice + ", part=" + part
				+ ", writerIntro=" + writerIntro + ", contentsOrder=" + contentsOrder + ", intro=" + intro
				+ ", publisherComment=" + publisherComment + ", recommendation=" + recommendation + ", goodsFileName="
				+ goodsFileName + ", enrollDt=" + enrollDt + "]";
	}
	
	
}
