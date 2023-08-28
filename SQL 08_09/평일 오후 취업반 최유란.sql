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
    '[날씨] 사상 초유 내륙 관통 태풍...내일~ 모레 새벽 고비/YTN',
    'YTN',
    87000,
    'https://i.ytimg.com/vi/iW0vQ3O3S58/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIHBACGAYgATgB&rs=AOn4CLBfIuyN-B6_36Ky2MZJYx0hPyc-iQ',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/iW0vQ3O3S58" title="[날씨] 사상 초유 내륙 관통 태풍...내일∼모레 새벽 고비 / YTN" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values (
    2,
    '[B tv 영화 추천]B tv x민호타우르스:''범죄도시3''',
    'B tv|SK브로드밴드',
    350000,
    'https://i.ytimg.com/vi/XlFnCK3545c/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIHBACGAYgATgB&rs=AOn4CLCxzBCwGkRCsbYen-xT_T9U4hyJsw',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/XlFnCK3545c" title="[B tv 영화 추천] B tv x 민호타우르스: ‘범죄도시3’" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);

insert into youtube values (
    3,
    'SNL 코리아 시즌4|고규필 편 하이라이트|경범죄도시|쿠팡플레이...',
    '쿠팡플레이 Coupang Play',
    3560000,
    'https://i.ytimg.com/vi/En6wrM5GHcc/hq720.jpg?sqp=-oaymwEnCNAFEJQDSFryq4qpAxkIARUAAIhCGAHYAQHiAQoIHBACGAYgATgB&rs=AOn4CLA8ueaDGqT9kdarkGrkMXR_QF5U0A',
    '<iframe width="800" height="450" src="https://www.youtube.com/embed/En6wrM5GHcc" title="SNL 코리아 시즌4 | 고규필 편 하이라이트 | 경범죄도시 | 쿠팡플레이 | 쿠팡" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>'
);
commit;
select * from youtube order by idx;
desc youtube;