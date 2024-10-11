package com.skt.tourfestival.model.vo;

public class Tour {
	private int tourNo;
	private String tourName;
	private String tourArea;
	private String tourTema;
	private String tourSeason;
	private String tourImg;
	private String tourThumnail;
	private int tourLike;
	private double tourLat;
	private double tourLong;
	
	public Tour() {
		super();
	}

	public Tour(int tourNo, String tourName, String tourArea, String tourTema, String tourSeason, String tourImg,
			String tourThumnail, int tourLike, double tourLat, double tourLong) {
		super();
		this.tourNo = tourNo;
		this.tourName = tourName;
		this.tourArea = tourArea;
		this.tourTema = tourTema;
		this.tourSeason = tourSeason;
		this.tourImg = tourImg;
		this.tourThumnail = tourThumnail;
		this.tourLike = tourLike;
		this.tourLat = tourLat;
		this.tourLong = tourLong;
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

	public String getTourArea() {
		return tourArea;
	}

	public void setTourArea(String tourArea) {
		this.tourArea = tourArea;
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

	public String getTourThumnail() {
		return tourThumnail;
	}

	public void setTourThumnail(String tourThumnail) {
		this.tourThumnail = tourThumnail;
	}

	public int getTourLike() {
		return tourLike;
	}

	public void setTourLike(int tourLike) {
		this.tourLike = tourLike;
	}

	public double getTourLat() {
		return tourLat;
	}

	public void setTourLat(double tourLat) {
		this.tourLat = tourLat;
	}

	public double getTourLong() {
		return tourLong;
	}

	public void setTourLong(double tourLong) {
		this.tourLong = tourLong;
	}

	@Override
	public String toString() {
		return "Tour [tourNo=" + tourNo + ", tourName=" + tourName + ", tourArea=" + tourArea + ", tourTema=" + tourTema
				+ ", tourSeason=" + tourSeason + ", tourImg=" + tourImg + ", tourThumnail=" + tourThumnail
				+ ", tourLike=" + tourLike + ", tourLat=" + tourLat + ", tourLong=" + tourLong + "]";
	}
	
	
	
}
