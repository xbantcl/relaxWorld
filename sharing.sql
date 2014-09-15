CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名称',
  `email` varchar(30) NOT NULL COMMENT '用户邮箱',
  `password` char(32) NOT NULL COMMENT '用户密码',
  `ip_address` char(20) NOT NULL COMMENT '用户IP',
  `qq` int(10) unsigned NOT NULL COMMENT '用户QQ',
  `city` varchar(10) NOT NULL COMMENT '用户所在城市',
  `description` varchar(100) NOT NULL COMMENT '用户简短介绍',
  `sex` char(2) NOT NULL COMMENT '用户性别',
  `last_login` int(10) unsigned NOT NULL COMMENT '最近一次登录时间',
  `register_time` int(10) unsigned NOT NULL COMMENT '注册时间',
  `birthday` date NOT NULL COMMENT '用户生日',
  `avatar` varchar(60) NOT NULL DEFAULT '/uploads/icon/0.jpg',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ci_sessions` ( 
  `session_id` varchar(40) DEFAULT '0' NOT NULL,
  `ip_address` varchar(16) DEFAULT '0' NOT NULL COMMENT '用户IP', 
  `user_agent` varchar(50) NOT NULL COMMENT '浏览器信息',
  `last_activity` int(10) unsigned DEFAULT 0 NOT NULL COMMENT '最近活跃',
  `user_data` text DEFAULT '' NOT NULL COMMENT '用户数据', 
  PRIMARY KEY (session_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
