package com.skt.tourist.model.vo;

public class Tourist {
	private int tourNo;
	private String tourName;
	private String tourFiled;
	private String tourTema;
	private String tourSeason;
	private String tourImg;
	private int likeNumber;
	
	public Tourist(int tourNo, String tourName, String tourFiled, String tourTema, String tourSeason, String tourImg, int likeNumber) {
		super();
		this.tourNo = tourNo;
		this.tourName = tourName;
		this.tourFiled = tourFiled;
		this.tourTema = tourTema;
		this.tourSeason = tourSeason;
		this.tourImg = tourImg;
		this.likeNumber = likeNumber;
	}
	public int getTourNo() {
		return tourNo;
	}
	public void setTourNo(int tourNo) {
		this.tourNo = tourNo;
	}
	public String getTourName() {
		return tourName;
	}
	public void setTourName(String tourName) {
		this.tourName = tourName;
	}
	public String getTourFiled() {
		return tourFiled;
	}
	public void setTourFiled(String tourFiled) {
		this.tourFiled = tourFiled;
	}
	public String getTourTema() {
		return tourTema;
	}
	public void setTourTema(String tourTema) {
		this.tourTema = tourTema;
	}
	public String getTourSeason() {
		return tourSeason;
	}
	public void setTourSeason(String tourSeason) {
		this.tourSeason = tourSeason;
	}
	public String getTourImg() {
		return tourImg;
	}
	public void setTourImg(String tourImg) {
		this.tourImg = tourImg;
	}
	public int getLikeNumber() {
		return likeNumber;
	}
	public void setLikeNumber(int likeNumber) {
		this.likeNumber = likeNumber;
	}
	@Override
	public String toString() {
		return "Tourist [tourNo=" + tourNo + ", tourName=" + tourName + ", tourFiled=" + tourFiled + ", tourTema="
				+ tourTema + ", tourSeason=" + tourSeason + ", tourImg=" + tourImg + ", likeNumber=" + likeNumber + "]";
	}
	
	
}
