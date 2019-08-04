package com.ssm.entity;

public class lbmessages {
   private int id;
   private String saver;
   private String content;
   private String recontent;
   private String bclass;
   private String sname;
   private String savetime;

public lbmessages(int id, String saver, String content, String recontent, String bclass, String sname,
		String savetime) {
	
	this.id = id;
	this.saver = saver;
	this.content = content;
	this.recontent = recontent;
	this.bclass = bclass;
	this.sname = sname;
	this.savetime = savetime;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getSaver() {
	return saver;
}
public void setSaver(String saver) {
	this.saver = saver;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getRecontent() {
	return recontent;
}
public void setRecontent(String recontent) {
	this.recontent = recontent;
}
public String getBclass() {
	return bclass;
}
public void setBclass(String bclass) {
	this.bclass = bclass;
}
public String getSname() {
	return sname;
}
public void setSname(String sname) {
	this.sname = sname;
}
public String getSavetime() {
	return savetime;
}
public void setSavetime(String savetime) {
	this.savetime = savetime;
}

}
