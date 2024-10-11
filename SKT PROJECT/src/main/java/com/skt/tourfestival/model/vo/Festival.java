package com.skt.tourfestival.model.vo;

import java.net.URL;

import oracle.sql.DATE;

public class Festival {
	private int fsNo;
	private String fsName;
	private String fsArea;
	private String fsSeason;
	private String fsTema;
	private String fsImg;
	private String fsUrl;
	private String FsDct;
	private int fsLike;
	private double fsLat;
	private double fsLong;
	private DATE fsStart;
	private DATE fsEnd;
	
	public Festival() {
		super();
	}

	

	public int getFsNo() {
		return fsNo;
	}



	public void setFsNo(int fsNo) {
		this.fsNo = fsNo;
	}



	public String getFsName() {
		return fsName;
	}



	public void setFsName(String fsName) {
		this.fsName = fsName;
	}



	public String getFsArea() {
		return fsArea;
	}



	public void setFsArea(String fsArea) {
		this.fsArea = fsArea;
	}



	public String getFsSeason() {
		return fsSeason;
	}



	public void setFsSeason(String fsSeason) {
		this.fsSeason = fsSeason;
	}



	public String getFsTema() {
		return fsTema;
	}



	public void setFsTema(String fsTema) {
		this.fsTema = fsTema;
	}



	public String getFsImg() {
		return fsImg;
	}



	public void setFsImg(String fsImg) {
		this.fsImg = fsImg;
	}



	public String getFsUrl() {
		return fsUrl;
	}



	public void setFsUrl(String fsUrl) {
		this.fsUrl = fsUrl;
	}



	public String getFsDct() {
		return FsDct;
	}



	public void setFsDct(String fsDct) {
		FsDct = fsDct;
	}



	public int getFsLike() {
		return fsLike;
	}



	public void setFsLike(int fsLike) {
		this.fsLike = fsLike;
	}



	public double getFsLat() {
		return fsLat;
	}



	public void setFsLat(double fsLat) {
		this.fsLat = fsLat;
	}



	public double getFsLong() {
		return fsLong;
	}



	public void setFsLong(double fsLong) {
		this.fsLong = fsLong;
	}



	public DATE getFsStart() {
		return fsStart;
	}



	public void setFsStart(DATE fsStart) {
		this.fsStart = fsStart;
	}



	public DATE getFsEnd() {
		return fsEnd;
	}



	public void setFsEnd(DATE fsEnd) {
		this.fsEnd = fsEnd;
	}



	public Festival(int fsNo, String fsName, String fsArea, String fsSeason, String fsTema, String fsImg, String fsUrl,
			String fsDct, int fsLike, double fsLat, double fsLong, DATE fsStart, DATE fsEnd) {
		super();
		this.fsNo = fsNo;
		this.fsName = fsName;
		this.fsArea = fsArea;
		this.fsSeason = fsSeason;
		this.fsTema = fsTema;
		this.fsImg = fsImg;
		this.fsUrl = fsUrl;
		FsDct = fsDct;
		this.fsLike = fsLike;
		this.fsLat = fsLat;
		this.fsLong = fsLong;
		this.fsStart = fsStart;
		this.fsEnd = fsEnd;
	}



	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}

	
}