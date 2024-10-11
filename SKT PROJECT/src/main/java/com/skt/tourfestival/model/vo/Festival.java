package com.skt.tourfestival.model.vo;

import java.net.URL;

import oracle.sql.DATE;

public class Festival {
	private int fsNo;
	private String fsName;
	private String fsArea;
	private String season;
	private String fsTema;
	private byte[] fsImg;
	private URL fsUrl;
	private String FsDct;
	private int like;
	private double fsLat;
	private double fsLong;
	private DATE fsStart;
	private DATE fsEnd;
	
	public Festival() {
		super();
	}

	public Festival(int fsNo, String fsName, String fsArea, String season, String fsTema, byte[] fsImg, URL fsUrl,
			String fsDct, int like, double fsLat, double fsLong, DATE fsStart, DATE fsEnd) {
		super();
		this.fsNo = fsNo;
		this.fsName = fsName;
		this.fsArea = fsArea;
		this.season = season;
		this.fsTema = fsTema;
		this.fsImg = fsImg;
		this.fsUrl = fsUrl;
		this.FsDct = fsDct;
		this.like = like;
		this.fsLat = fsLat;
		this.fsLong = fsLong;
		this.fsStart = fsStart;
		this.fsEnd = fsEnd;
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

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String getFsTema() {
		return fsTema;
	}

	public void setFsTema(String fsTema) {
		this.fsTema = fsTema;
	}

	public byte[] getFsImg() {
		return fsImg;
	}

	public void setFsImg(byte[] fsImg) {
		this.fsImg = fsImg;
	}

	public URL getFsUrl() {
		return fsUrl;
	}

	public void setFsUrl(URL fsUrl) {
		this.fsUrl = fsUrl;
	}

	public String getFsDct() {
		return FsDct;
	}

	public void setFsDct(String fsDct) {
		FsDct = fsDct;
	}

	public int getLike() {
		return like;
	}

	public void setLike(int like) {
		this.like = like;
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

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
}