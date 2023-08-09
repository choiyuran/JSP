create table movie (
    movie_rank          number,
    title               varchar2(100),
    openningDate        varchar2(100),
    reserveRate         number(3,1),
    reserveCount        number,
    watchCount          number
);

insert into movie values (1, '오펜하이머', '2023-08-15', 32.1, 157757, 0);
insert into movie values (2, '콘크리트 유토피아', '2023-08-09', 29.5, 144916, 14126);
insert into movie values (3, '밀수', '2023-07-26', 9.3, 45860, 3667880);
insert into movie values (4, '보호자', '2023-08-15', 4.2, 20606, 401);
insert into movie values (5, '비공식작전', '2023-08-02', 4.0, 19880, 759613);
insert into movie values (6, '더 문', '2023-08-02', 3.7, 18336, 384791);
insert into movie values (7, '엘리멘탈', '2023-06-14', 3.3, 15987, 6354883);
insert into movie values (8, '달짝지근해:7510', '2023-08-15', 2.7, 13318, 6637);
insert into movie values (9, '런닝맨: 리벤져스', '2023-08-10', 1.7, 8390, 2062);
insert into movie values (10, '명탐정코난: 흑철의 어영', '2023-07-20', 1.6, 8078, 685440);
commit;

desc movie;
select * from movie;