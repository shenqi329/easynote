use db_sso;


drop table `t_user`;

CREATE TABLE `t_user` (
  `t_user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `t_user_username` varchar(100) NOT NULL COMMENT '用户名',
  `t_user_password` varchar(200) NOT NULL COMMENT '密码',
  `t_user_birthday` datetime DEFAULT NULL COMMENT '生日',
  `t_user_name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `t_user_icon` varchar(500) DEFAULT NULL COMMENT '头像图片',
  `t_user_sex` char(1) DEFAULT NULL COMMENT '性别, 1:男，2:女，3：保密',
  `t_user_nickname` varchar(200) DEFAULT NULL COMMENT '昵称',
  `t_user_last_login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `t_user_last_login_ip` varchar(100) DEFAULT NULL COMMENT '最后登录IP',
  `t_user_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `t_user_mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `t_user_is_email_confirmed` char(1) DEFAULT '0' COMMENT '是否绑定邮箱',
  `t_user_is_mobile_confirmed` char(1) DEFAULT '0' COMMENT '是否绑定手机',
  `t_user_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `t_user_update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`t_user_id`),
  UNIQUE KEY `t_user_username` (`t_user_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

drop table `t_token`;

CREATE TABLE `t_token` (
  `t_token_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `t_token_user_id` bigint(20) NOT NULL COMMENT '用户id',
  `t_token_token` varchar(200) NOT NULL COMMENT '授权码',
  `t_token_device_id` varchar(36) NOT NULL  COMMENT '设备id',
  `t_token_app_id` varchar(36) NOT NULL  COMMENT '应用id',
  `t_token_platform` varchar(10) NOT NULL  COMMENT '平台',
  `t_token_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  `t_token_expired_time` datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP COMMENT '修改日期',
  PRIMARY KEY (`t_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

drop table `t_email_verify`;

CREATE TABLE `t_email_verify` (
  `t_email_verify_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `t_email_verify_username`	varchar(100) NOT NULL COMMENT '被验证的用户名',
  `t_email_verify_email`	varchar(100) NOT NULL COMMENT '被验证的邮箱',
  `t_email_verify_code`	varchar(10) NOT NULL COMMENT '验证码',
  `t_email_verify_expired_time`	datetime NOT NULL  DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`t_email_verify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

























































