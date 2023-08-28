select * from tab;
drop table youtube purge;

create table youtube(
    idx             number,
    title           varchar2(500),
    channel         varchar2(100),
    viewCount       number,
    thumbnail       varchar2(500),
    movieTag        varchar2(1000)
);
set define off;

insert into youtube values (
    1,
    '[����] ��� ���� ���� ���� ��ǳ...����~ �� ���� ���/YTN',
    'YTN',
    87000,
    'https://i.ytimg.com/vi/iW0vQ3O3S58/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIHBACGAYgATgB&rs=AOn4CLBfIuyN-B6_36Ky2MZJYx0hPyc-iQ',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/iW0vQ3O3S58" title="[����] ��� ���� ���� ���� ��ǳ...���ϡ��� ���� ��� / YTN" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values (
    2,
    '[B tv ��ȭ ��õ]B tv x��ȣŸ�츣��:''���˵���3''',
    'B tv|SK��ε���',
    350000,
    'https://i.ytimg.com/vi/XlFnCK3545c/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIHBACGAYgATgB&rs=AOn4CLCxzBCwGkRCsbYen-xT_T9U4hyJsw',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/XlFnCK3545c" title="[B tv ��ȭ ��õ] B tv x ��ȣŸ�츣��: �����˵���3��" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values (
    3,
    'SNL �ڸ��� ����4|����� �� ���̶���Ʈ|����˵���|�����÷���...',
    '�����÷��� Coupang Play',
    3560000,
    'https://i.ytimg.com/vi/En6wrM5GHcc/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIHBACGAYgATgB&rs=AOn4CLA8ueaDGqT9kdarkGrkMXR_QF5U0A',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/En6wrM5GHcc" title="SNL �ڸ��� ����4 | ����� �� ���̶���Ʈ | ����˵��� | �����÷��� | ����" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);
commit;
select * from youtube order by idx;
desc youtube;