drop table if exists board_tbl;

create table board_tbl(
bno int auto_increment primary key,
title varchar(300) not null,
contents text not null,
writer varchar(50) not null,
regDate timeStamp default current_timestamp,
updateDate timeStamp default current_timestamp
);

insert into board_tbl(title,contents,writer) values('게시물 제목입니다','배가 고픕니다','거시기');
insert into board_tbl(title,contents,writer) values('게시물 제목입니다2','배가 고픕니다2','거시기2');
insert into board_tbl(title,contents,writer) values('게시물 제목입니다3','배가 고픕니다3','거시기3');
insert into board_tbl(title,contents,writer) values('게시물 제목입니다4','배가 고픕니다4','거시기4');