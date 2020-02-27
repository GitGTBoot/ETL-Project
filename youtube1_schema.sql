drop table usa;
Create Table usa (	
video_id VARCHAR(150) UNIQUE NOT NULL,
title  VARCHAR(250),
channel_title VARCHAR(150),
category_id INTEGER,
category_title VARCHAR(150),
trending_date VARCHAR(25),
publish_hour VARCHAR(25),
video_views INTEGER NOT NULL,
likes INTEGER NOT NULL,
dislikes INTEGER NOT NULL
);

Select * from usa;