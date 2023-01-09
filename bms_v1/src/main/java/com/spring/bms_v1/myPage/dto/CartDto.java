package com.spring.bms_v1.myPage.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class CartDto {

	private long cartCd;
	private int goodsCd;
	private int cartGoodsQty;
	private String memberId;
	private Date enrollDt;
	
	public long getCartCd() {
		return cartCd;
	}
	public void setCartCd(long cartCd) {
		this.cartCd = cartCd;
	}
	public int getGoodsCd() {
		return goodsCd;
	}
	public void setGoodsCd(int goodsCd) {
		this.goodsCd = goodsCd;
	}
	public int getCartGoodsQty() {
		return cartGoodsQty;
	}
	public void setCartGoodsQty(int cartGoodsQty) {
		this.cartGoodsQty = cartGoodsQty;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Date getEnrollDt() {
		return enrollDt;
	}
	public void setEnrollDt(Date enrollDt) {
		this.enrollDt = enrollDt;
	}
	
	@Override
	public String toString() {
		return "CartDto [cartCd=" + cartCd + ", goodsCd=" + goodsCd + ", cartGoodsQty=" + cartGoodsQty + ", memberId="
				+ memberId + ", enrollDt=" + enrollDt + "]";
	}
	
}
