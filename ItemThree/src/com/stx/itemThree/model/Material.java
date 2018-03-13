package com.stx.itemThree.model;

public class Material {
private int mat_id; //物资id
private String mat_name; //物资名
private int mat_num;     //物资数量
private String mat_organ; //所属组织
private String mat_imgname; //物资图片
private String mat_url; //图片路径
private String mat_cate; //类别
private String mat_state;//状态
private int mat_price;  //价格
private String mat_uptime;//上传时间
private String mat_ledadte; //借用时间
private int app_id;      //申请表id
public String getMat_name() {
	return mat_name;
}
public void setMat_name(String mat_name) {
	this.mat_name = mat_name;
}
public int getMat_num() {
	return mat_num;
}
public void setMat_num(int mat_num) {
	this.mat_num = mat_num;
}
public String getMat_imgname() {
	return mat_imgname;
}
public void setMat_imgname(String mat_imgname) {
	this.mat_imgname = mat_imgname;
}
public String getMat_url() {
	return mat_url;
}
public void setMat_url(String mat_url) {
	this.mat_url = mat_url;
}
public String getMat_cate() {
	return mat_cate;
}
public void setMat_cate(String mat_cate) {
	this.mat_cate = mat_cate;
}
public int getMat_price() {
	return mat_price;
}
public void setMat_price(int mat_price) {
	this.mat_price = mat_price;
}
public String getMat_organ() {
	return mat_organ;
}
public void setMat_organ(String mat_organ) {
	this.mat_organ = mat_organ;
}
public String getMat_state() {
	return mat_state;
}
public void setMat_state(String mat_state) {
	this.mat_state = mat_state;
}
public int getMat_id() {
	return mat_id;
}
public void setMat_id(int mat_id) {
	this.mat_id = mat_id;
}
public String getMat_ledadte() {
	return mat_ledadte;
}
public void setMat_ledadte(String mat_ledadte) {
	this.mat_ledadte = mat_ledadte;
}
public int getApp_id() {
	return app_id;
}
public void setApp_id(int app_id) {
	this.app_id = app_id;
}
public String getMat_uptime() {
	return mat_uptime;
}
public void setMat_uptime(String mat_uptime) {
	this.mat_uptime = mat_uptime;
}
}
