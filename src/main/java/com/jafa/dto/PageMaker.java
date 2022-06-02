package com.jafa.dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PageMaker {

	Criteria criteria;
	int totalCount;
	int startPage;
	int endPage;
	int displayPageNum=10;
	
	private void calcData() {
		endPage=(int)Math.ceil(criteria.getPage() / (double)displayPageNum)*displayPageNum;
		startPage=endPage-displayPageNum+1;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
}
