create table student(
    name            varchar2(20), 
    kor             number,
    eng             number,
    math            number
);
drop table student purge;

insert into student values('��¯��', 60, 55, 70);
insert into student values('������', 70, 65, 55);
commit;