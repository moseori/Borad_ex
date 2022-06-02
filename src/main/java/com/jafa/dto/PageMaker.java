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
	boolean prve;
	boolean next;
	
	private void calcData() {
		endPage=(int)Math.ceil(criteria.getPage() / (double)displayPageNum)*displayPageNum;
		startPage=endPage-displayPageNum+1;
		
		int tempEndPage=(int)Math.ceil(totalCount/(double)criteria.getPerPageNum());
		if(endPage>tempEndPage) { endPage=tempEndPage;}
		
		
		prve=startPage==1? false:true;
		next=endPage>=tempEndPage?false:true;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
}
