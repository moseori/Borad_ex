package com.jafa.dto;

import lombok.Getter;
import lombok.Setter;

public class Criteria {

	private int page;
	private int perPageNum;
	
	public Criteria() {
		this.page=1;
		this.perPageNum=10;
	}
	
	public int getPage() {
		return page;
	}
	
	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPage(int page) {
		if (page<=0) {this.page=1; } 
		else {this.page = page; }
	}

	public int getPageStart() {
		return (this.page-1)*perPageNum;
	}
}
