DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS fb_group;

CREATE TABLE user (
    id INTEGER PRIMARY KEY,
    nick TEXT NOT NULL
);

CREATE TABLE fb_group (
    id INTEGER PRIMARY KEY,
    group_name TEXT NOT NULL
);

INSERT INTO user (nick)
VALUES ('karo3454'),
       ('zielu645'),
       ('csv_geek'),
       ('mon_ty_90'),
       ('karkao'),
       ('machu345'),
       ('ncoan');
	   
INSERT INTO fb_group (group_name)
VALUES ('Python'),
       ('Big Data'),
       ('Inwestowanie w GameDev'),
       ('Oferty pracy IT'),
       ('Football');
	      
SELECT * FROM user;	  
SELECT * FROM fb_group;

CREATE TABLE bridge (
    user_id     INTEGER REFERENCES user (id),
    fb_group_id INTEGER REFERENCES fb_group (id),
    PRIMARY KEY (user_id, fb_group_id)
);

INSERT INTO bridge (user_id, fb_group_id)
VALUES (1, 2),
       (1, 4),
       (2, 1),
       (2, 2),
       (2, 3),
       (4, 1),
       (4, 2),
       (6, 2),
       (6, 3);
	   
SELECT * FROM bridge;

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS fb_group;
DROP TABLE IF EXISTS bridge;	   
