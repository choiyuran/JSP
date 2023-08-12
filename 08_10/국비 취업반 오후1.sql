create table student(
    name            varchar2(20), 
    kor             number,
    eng             number,
    math            number
);
drop table student purge;

insert into student values('신짱구', 60, 55, 70);
insert into student values('이지은', 70, 65, 55);
commit;