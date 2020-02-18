CREATE DATABASE IF NOT EXISTS JDBC;
USE JDBC;

DROP TABLE IF EXISTS `paiming`;
CREATE TABLE `paiming` (
  `scale` varchar(11) NOT NULL,
  `srank` varchar(20) DEFAULT NULL,/*考生学校排名*/
  PRIMARY KEY (`scale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
INSERT INTO `paiming` (`scale`,`srank`) VALUES 
 ('01','101'),
 ('03','25'),
 ('04','44'),
 ('08','57'),
 ('10','82'),
 ('09','95'),
 ('07','26'),
 ('05','75');
 
DROP TABLE IF EXISTS `success`;
CREATE TABLE `success` (
  `snum` varchar(30) NOT NULL,/*考生准考证号*/
  `sbnum` int,/*科目号*/
  `pnum` int,/*试卷号*/
  `subject` varchar(40),/*科目名称*/
  `scale` varchar(2),/*考生班级排名*/
  PRIMARY KEY (`snum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `success` (`snum`,`sbnum`,`pnum`,`subject`,`scale`) VALUES 
 ('20154091001',1,10,'C语言','01'),
 ('20154091002',2,20,'jsp程序设计','01'),
 ('20154091003',3,20,'面向对象设计','01'),
 ('20154091004',4,20,'java程序设计','01'),
 ('20154091005',5,20,'高等数学','01'),
 ('20154091006',1,50,'C语言','01'),
 ('20154091007',2,20,'jsp程序设计','01'),
 ('20144091008',3,20,'面向对象设计','02'),
 ('20164091006',4,20,'java程序设计','01'),
 ('20164091007',5,20,'高等数学','01'),
 ('20164091001',1,40,'C语言','01'),
 ('20164091002',5,20,'高等数学','01'),
 ('20164091003',3,20,'面向对象设计','01'),
 ('20164091004',4,20,'java程序设计','01'),
 ('20164091005',5,30,'高等数学','01'),
 ('20164091010',1,20,'C语言','01'),
 ('20164091011',2,20,'jsp程序设计','01'),
 ('20164091012',3,20,'面向对象设计','01'),
 ('20164091013',4,20,'java程序设计','01'),
 ('20164091014',5,20,'高等数学','01'),
 ('20164091015',1,20,'C语言','01'),
 ('20164091016',2,20,'jsp程序设计','01');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


INSERT INTO `user` VALUES ('1', 'admin', '30', '123456');
INSERT INTO `user` VALUES ('3', 'cs', '25', '123456');
INSERT INTO `user` VALUES ('4', 'qw', '12', '123');
INSERT INTO `user` VALUES ('5', 'de', '34', '123456');
INSERT INTO `user` VALUES ('7', 'gd', '27', '123');
INSERT INTO `user` VALUES ('8', 'qwe', '25', '123');
INSERT INTO `user` VALUES ('9', '123', '12', '123');
INSERT INTO `user` VALUES ('10', 'csa', '22', '123');
INSERT INTO `user` VALUES ('11', 'asda', '11', '123');

DROP TABLE IF EXISTS loginfo;
CREATE TABLE loginfo (
  id int(11) NOT NULL AUTO_INCREMENT,
  userid varchar(20) DEFAULT NULL,
  loginIP varchar(30) default NUll,
  logintime datetime DEFAULT NULL,
  PRIMARY KEY (id)
)  DEFAULT CHARSET=utf8;

INSERT INTO loginfo (id,userid,loginIP,logintime) VALUES 
 (null,'admin',"192.168.0.1",'2019-10-11 18:11:06'),
 (null,'admin',"192.168.0.2",'2019-10-11 18:12:06'),
 (null,'admin',"192.168.0.3",'2019-10-11 18:13:06');

DROP TABLE IF EXISTS login;
CREATE TABLE login (
  id int(11),
  uname varchar(20),
  upwd varchar(20) 
) ;

INSERT INTO `login` (`id`,`uname`,`upwd`) VALUES 
 (1,'zs','abc');
 
 
 
DROP TABLE IF EXISTS mytxt;
CREATE TABLE mytxt (
  id int(11) primary key,
  txt text
) ;
set global max_allowed_packet = 2*1024*1024*10;
DROP TABLE IF EXISTS  mymusic;
CREATE TABLE  mymusic (
  id int(11) primary key,
  music Blob
) ;
