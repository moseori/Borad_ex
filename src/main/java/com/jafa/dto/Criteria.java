package com.jafa.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Criteria {

	private int page;
	private int perPageNum;
	
	private String keyword;
	private String type;
	
	public Criteria() {
		this.page=1;
		this.perPageNum=10;
	}

	public void setPage(int page) {
		if (page<=0) {this.page=1; } 
		else {this.page = page; }
	}

	public int getPageStart() {
		return (this.page-1)*perPageNum;
	}
	
	//TC =>{T,C}
	//WC =>{W,C}
	//type.split("#") LEE#CC#BB => {LEE, WCC, BB}
	public String[] getTypeCollection() {
		return this.type !=null?type.split(""):new String[] {};
	}
}
