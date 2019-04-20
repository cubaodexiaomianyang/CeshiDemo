CREATE TABLE chanpinduijie
(
   id                   NVARCHAR(20),
   userinfo             TEXT,
   chanpin_id           NVARCHAR(20),
   check_time           DATE,
   check_type           NVARCHAR(20)
);


CREATE TABLE chanpin
(
   chanpin_id           NVARCHAR(120) NOT NULL COMMENT '产品id',
   img                  NVARCHAR(100) COMMENT '产品图片展示',
   biaoti               NVARCHAR(20) COMMENT '标题',
   shixian              NVARCHAR(50) COMMENT '产品id',
   jianjie              NVARCHAR(1000) COMMENT '产品简介',
   tiaojian             NVARCHAR(300) COMMENT '产品条件',
   liucheng             NVARCHAR(300) COMMENT '产品申请的流程',
   lianxiwomen          NVARCHAR(100) COMMENT '联系产品方',
   chanpingfenleiid      NVARCHAR(100) COMMENT '产品类型Id',/* 二级表分类同时套用行业的分类*/
   faburen              NVARCHAR(100) COMMENT '发布人',
   chanpinfabushijian   NVARCHAR(50)  COMMENT '产品最终发布时间',
   PRIMARY KEY (chanpin_id)
);

INSERT INTO chanpin(chanpin_id,img,biaoti,shixian,jianjie,tiaojian,liucheng,lianxiwomen,chanpingfenleiid,faburen,chanpinfabushijian)
VALUE ('1w1','abc/asdsa/','我们都不知道','2018-11-30','简介','申报条件说明','流程说明','1111111','1','发布人','2018-11-19'),
	('1w2','abc/ass/','我们都不知道','2018-11-29','简介','申报条件说明','流程说明','1111111','2','发布人','2018-11-19'),
	('1w3','abc/adaddsa/','我们都不知道','2018-11-28','简介','申报条件说明','流程说明','1111111','3','发布人','2018-11-19'),
	('1w4','abc/8y6t/','我们都不知道','2018-11-27','简介','申报条件说明','流程说明','1111111','4','发布人','2018-11-19');


CREATE TABLE shenhe
(
	id NVARCHAR(120) NOT NULL COMMENT '审核id',
	shenhecishu          INT COMMENT '审核次数',
	 shenheshijian        NVARCHAR(50) COMMENT '审核时间',
	 bohuiyuanyin         NVARCHAR(1000)  COMMENT '审核驳回的原因',
	 shenhezhuangtai   	Int COMMENT  '审核状态(0:代表审核通过，1：代表审核未通过)',
	 shenhe_chanpin_id    NVARCHAR(150)
	 PRIMARY KEY (id)
)
INSERT INTO shenhe(id,shenhecishu,shenheshijian,bohuiyuanyin,shenhezhuangtai,shenhe_chanpin_id)
VALUE ('1',1,'2018-11-20','驳回原因的描述',0,'1w1'),
	('2',1,'2018-11-19','驳回原因的描述',1,'1w2');

CREATE TABLE xinwenzixun /*新闻的详细信息 */
(
   id                   NVARCHAR(120),
   biaoti               NVARCHAR(100),
   fabushijian          NVARCHAR(120),
   faburen              NVARCHAR(20),
   xinwenneirong        TEXT,/*展示表时不需要*/
   fengmiantupian       TEXT,/*展示表时不需要*/
   xinwenlanmuid        NVARCHAR(120),/*展示表时不需要*/
   liulancount      	 INT,
   dianzancount   	INT  COMMENT '预留的字段,点赞总数',
   pingluncount 	INT COMMENT '预留的字段,评论总数'
);
INSERT INTO xinwenzixun(id,biaoti,fabushijian,faburen,xinwenneirong,fengmiantupian,xinwenlanmuid,liulancount,dianzancount,pingluncount)
VALUE ('1','哒哒哒','2018-8-8','a','xxxxxxxxxxxxxxxxxxxxxxxx','asd/dasd/dasd','1',0,0,0),
	('2','嘀嘀嘀','2018-4-8','b','xxxsdaxxxxxxxxxxxxxxxxxxxxx','asd/dasd/dadwd','2',0,0,0),
	('3','酷酷酷','2018-6-8','b','xxxsdaxxxxdsadxxxxxxxxxxxxxxxxx','asd/dadsadsd/dadwd','3',0,0,0),
	('4','喀喀喀','2018-7-8','b','xxxsdaxxxxxxxxxdasdasdxxxxxxxxxxxx','asd/dasdsadaddad/dadadadwd','4',0,0,0);



CREATE TABLE xinwenlanmubiao
(
   id                   NVARCHAR(120),
   lanmumingcheng       NVARCHAR(20),
   create_time          DATE
);

INSERT INTO xinwenlanmubiao(id,lanmumingcheng,create_time)
VALUE ('1','栏目1','2019-5-8'),
 ('2','栏目2','2019-6-8'),
  ('3','栏目3','2019-7-8'),
 ('4','栏目4','2019-8-8');

CREATE TABLE toushujianyibiao
(
   id                   NVARCHAR(20),
   toushuren            NVARCHAR(20),
   toushuneirong        TEXT,
   beitoushuren         NVARCHAR(20),
   shifouniming         NVARCHAR(20),
   toushushijian        DATE,
   toushuzhuangtai      NVARCHAR(20)
);



CREATE TABLE usertype
(
   id                   NVARCHAR(100),
   fenleimingcheng      NVARCHAR(20),
   userstate            NVARCHAR(20)
);


CREATE TABLE `user`
(
   user_id              NVARCHAR(100) NOT NULL,
   user_name            NVARCHAR(30),
   phone                NVARCHAR(30),
   user_jifen           INT,
   denglu_id            NVARCHAR(30),
   PRIMARY KEY (user_id)
);

INSERT INTO `user` (user_id,user_name,phone,user_jifen,denglu_id)
VALUE ('6','2','3',4,'5'),
('2','2','3',4,'5'),
('3','2','3',4,'5'),
('4','2','3',4,'5'),
('5','2','3',4,'5');


CREATE TABLE fujianguanxibiao
(
   id                   NVARCHAR(120),
   fujianid             NVARCHAR(120),/*附件id chuan*/
   fujiantype           NVARCHAR(20),/*附件类型 chuan*/
   guanlianid           NVARCHAR(120),/*关联编号  关联的是那个表里面的id*/
   guanlianbiaoming     NVARCHAR(120),/*关联表名  关联那个表比如user,新闻等*/
   shangchuanren        NVARCHAR(50),/*上传人和用户Id 进行绑定   管理员自己*/
   shangchaunshijian    NVARCHAR(100),/*上传时间 chuan*/
   beizhuxinxi          TEXT,/*备注信息 null*/
   urlxinxi             TEXT/*Url信息  chuan*/
);


CREATE TABLE userjob
(
   id                   NVARCHAR(100),
   jobmingzi            NVARCHAR(50),
   jobstate             NVARCHAR(20),
   shangjihangye        NVARCHAR(20)
);
INSERT INTO userjob (id,jobmingzi,jobstate,shangjihangye)
VALUE ('1','IT','正常','国有'),
	('2','cctv1','正常','国有'),
	('3','金融','正常','XXXX企业'),
	('4','XXX厂','正常','私有企业xxxxx');

CREATE TABLE fujianbiao
(
   id                   NVARCHAR(100),/*本id*/
   fujianmingcheng      NVARCHAR(160),/*附件的名字(原名)*/
   fujianwenjianming    NVARCHAR(160),/*附件上传时的文件名(别名)*/
   fujianhouzhui        NVARCHAR(20),/*后缀名*/
   fujiandaxiao         NVARCHAR(20),/*附件大小*/
   fujianlujing         TEXT,/*存储路径*/
   fujianqitalujing     TEXT,/*附件其他路径*/
   shangchuanshijian    NVARCHAR(100),/*上传时间*/
   xiazhaicishu         INT,/*下载次数*/
   fujianstate          NVARCHAR(20)/*附件状态*/
);


CREATE TABLE userhangyeguanxi
(
   id                   NVARCHAR(100) PRIMARY KEY,
   userhangyeid         NVARCHAR(100),
   userid               NVARCHAR(100),
   userfenleiid         NVARCHAR(100)
);
INSERT INTO userhangyeguanxi(id,userhangyeid,userid,userfenleiid)
VALUE ('1','1','2','1'),
	('2','1','4','1'),
	('3','1','5','1');


CREATE TABLE denglubiao
(
   id                   NVARCHAR(120),
   dengluid             NVARCHAR(120),
   `PASSWORD`            NVARCHAR(80),
   psdjiami             NVARCHAR(80),
   lastdenglushijian    NVARCHAR(30),
   dengluIP             TEXT
);
INSERT INTO denglubiao (id,dengluid,`PASSWORD`,psdjiami,lastdenglushijian,dengluIP)
VALUES ('adas','a','a','0','2018-11-14','201,1202,56,199')

CREATE TABLE dianzan
(
   id                   NVARCHAR(20),
   userid               NVARCHAR(20),
   dianzanduixiangid    NVARCHAR(20),
   dianzanbiaoming      NVARCHAR(20),
   dianzanshijian       DATE
);


CREATE TABLE pinglunbiao
(
   id                   NVARCHAR(20),
   userId               NVARCHAR(20),
   pinglunduixiang      NVARCHAR(20),
   pinglunbiaoming      NVARCHAR(20),
   pinglunshijian       DATE,
   pinglunneirong       TEXT,
   pinglunpinglunid     NVARCHAR(20)
);

INSERT INTO usertype(id,fenleimingcheng,userstate)
VALUE('1','资金方','正常'),
     ('2','资金需求方','正常');