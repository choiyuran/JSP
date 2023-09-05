drop sequence artist_seq;
drop sequence album_seq;

drop table artist cascade constraints purge;
drop table album cascade constraints purge;

create sequence artist_seq
    start with 1
    maxvalue 99999
    increment by 1
    nocycle
    nocache;
    
create sequence album_seq
    start with 1
    maxvalue 99999
    increment by 1
    nocycle
    nocache;

create table artist (
    id          number          default artist_seq.nextval primary key,
    name        varchar2(200)   not null,
    company     varchar2(200)   ,
    country     varchar2(100)   ,
    member      varchar2(200)   not null,
    debut       date            ,
    type        varchar2(100)   not null,
    profileImg  varchar2(500)   
);


create table album (
    id          number          default album_seq.nextval primary key,
    artist_id   number          not null,
    name        varchar2(200)   not null,
    type        varchar2(100)   not null,
    rDate       date            not null,
    playTime    number          not null,
    coverImg    varchar2(500),
    
    constraint album_artist_fk
    foreign key (artist_id)
    references artist(id)
);

select * from artist;
select * from album;
delete artist where id=2;
delete album where id=1;
delete artist where id=4;
commit;

select artist.name, album.name
from artist join album 
on artist.id=album.artist_id
where artist.name='뉴진스';

update artist set name='뉴진스' where id=3;
commit;
delete artist where id=3;
delete album where artist_id=3;
commit;

