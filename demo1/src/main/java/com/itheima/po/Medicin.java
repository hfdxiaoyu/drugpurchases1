package com.itheima.po;
/**
 * 药品实体类
 * @author 13069
 *
 */


import java.util.Date;

public class Medicin {
	private Integer medid;// 药品编号
	private String medname;// 药品名称
	private String medspe;// 药品规格
	private float medprice;// 药品价格
	private String medproduct;// 药品生产商
	private Date medsdate;// 药品生产日期
	private Integer medvalidity;// 药品有效期
	private Integer start;// 起始行
	private Integer rows;// 所取行数

	public Integer getMedid() {
		return medid;
	}

	public void setMedid(Integer medid) {
		this.medid = medid;
	}

	public String getMedname() {
		return medname;
	}

	public void setMedname(String medname) {
		this.medname = medname;
	}

	public String getMedspe() {
		return medspe;
	}

	public void setMedspe(String medspe) {
		this.medspe = medspe;
	}

	public float getMedprice() {
		return medprice;
	}

	public void setMedprice(float medprice) {
		this.medprice = medprice;
	}

	public String getMedproduct() {
		return medproduct;
	}

	public void setMedproduct(String medproduct) {
		this.medproduct = medproduct;
	}

	public Date getMedsdate() {
		return medsdate;
	}

	public void setMedsdate(Date medsdate) {
		this.medsdate = medsdate;
	}

	public Integer getMedvalidity() {
		return medvalidity;
	}

	public void setMedvalidity(Integer nedvalidity) {
		this.medvalidity = nedvalidity;
	}

	public Integer getStart() {
		return start;
	}

	public void setStart(Integer start) {
		this.start = start;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "Medicin [medid=" + medid + ", medname=" + medname + ", medspe=" + medspe + ", medprice=" + medprice
				+ ", medproduct=" + medproduct + ", medsdate=" + medsdate + ", medvalidity=" + medvalidity + ", start="
				+ start + ", rows=" + rows + "]";
	}

}
