create table melon (
    ranking     number,   
    title       varchar2(100),
    artist      varchar2(80),
    album       varchar2(100),
    likeCount   number
);

insert into melon values(1, 'Super Shy', 'NewJeans', 'NewJeans 2nd EP ''Get Up''', 124635);
insert into melon values(2, 'ETA', 'NewJeans', 'NewJeans 2nd EP ''Get Up''', 72628);
insert into melon values(3, 'Seven(feat.Latto) - Clean Ver.', '����', 'Seven(fea.Latto)-Clea..', 137573);
insert into melon values(4, '��ī(Queencard)', '(����)���̵�', 'I feel', 127567);
insert into melon values(5, '������� ���ؿ�', '������', '1�� Alone', 103467);
insert into melon values(6, 'I AM', 'IVE(���̺�)', 'I''ve IVE', 190809);
insert into melon values(7, '�̺�, ������ �׸��� Ǫ�� ����..', 'Le SSERAFIM(��������)', 'UNFORGIVEN', 99316);
insert into melon values(8, 'Spicy', 'aespa', 'My WORLD - The 2rd Mi..', 116993);
insert into melon values(9, 'Steal The Show(From "����...', 'Lauv', 'Steal The Show(From"...', 117403);
insert into melon values(10, 'New Jeans', 'NewJeans', 'NewJeans 2nd EP ''Get Up''', 62054);
commit;

desc melon;