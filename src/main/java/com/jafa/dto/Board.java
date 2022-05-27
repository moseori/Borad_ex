package com.jafa.dto;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Board {
	long bno; // 게시물 번호
	String title;
	String contents;
	String writer;
	LocalDateTime regDate;
	LocalDateTime updateDate;

}
