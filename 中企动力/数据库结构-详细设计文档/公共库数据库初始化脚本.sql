/*
Navicat MySQL Data Transfer

Source Server         : 122.14.217.106
Source Server Version : 50639
Source Host           : 122.14.217.106:3306
Source Database       : new_public

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-04-26 11:09:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity_public_template
-- ----------------------------
DROP TABLE IF EXISTS `activity_public_template`;
CREATE TABLE `activity_public_template` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `tag` varchar(255) DEFAULT NULL COMMENT '标签',
  `web_url` varchar(255) DEFAULT NULL COMMENT '活动页面地址',
  `update_name` varchar(255) DEFAULT NULL COMMENT '更改名称',
  `use_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '使用时间',
  `model_pic` varchar(255) DEFAULT NULL COMMENT '模板预览大图',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `thumbnail_pic` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '模板图片',
  `text_info` text COMMENT '文本内容',
  `address_info` varchar(255) DEFAULT NULL COMMENT '地址信息',
  `collect_info` varchar(255) DEFAULT NULL COMMENT '客户参加活动需要提交的信息',
  `button_css` varchar(255) DEFAULT NULL COMMENT '按钮样式（颜色代码）',
  `button_text` varchar(255) DEFAULT NULL COMMENT '按钮文本',
  `background_music` varchar(255) DEFAULT NULL COMMENT '背景音乐',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `weixin_qrcode` varchar(255) DEFAULT NULL COMMENT '微信二维码',
  `weibo_qrcode` varchar(255) DEFAULT NULL COMMENT '微博二维码',
  `text_info_color` varchar(255) DEFAULT NULL COMMENT '文本颜色',
  `background_pic` text COMMENT '背景图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活动模板表';

-- ----------------------------
-- Table structure for address_code
-- ----------------------------
DROP TABLE IF EXISTS `address_code`;
CREATE TABLE `address_code` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `name` varchar(255) DEFAULT NULL COMMENT '地区名称',
  `code` varchar(255) DEFAULT NULL COMMENT '当前节点编码',
  `parent_code` varchar(255) DEFAULT NULL COMMENT '父节点编码',
  `level` int(11) DEFAULT NULL COMMENT '级别。1：国家；2：省份；3：城市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='地区编码表';

-- ----------------------------
-- Table structure for auto_market_point_info_public
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_point_info_public`;
CREATE TABLE `auto_market_point_info_public` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `task_id` bigint(20) DEFAULT NULL COMMENT '任务id',
  `parent_task_id` bigint(20) DEFAULT NULL COMMENT '父任务id',
  `point_id` bigint(20) DEFAULT NULL COMMENT '节点id',
  `parent_point_id` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `point_info` varchar(2000) DEFAULT NULL COMMENT '节点信息(Json串)',
  `point_type` int(11) DEFAULT NULL COMMENT '节点类型。1.条件。2.时间。3.动作',
  `template_id` bigint(20) DEFAULT NULL COMMENT '模板id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销节点信息表';

-- ----------------------------
-- Table structure for auto_market_template_public
-- ----------------------------
DROP TABLE IF EXISTS `auto_market_template_public`;
CREATE TABLE `auto_market_template_public` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `stop_time` datetime DEFAULT NULL COMMENT '停止时间',
  `run_time` datetime DEFAULT NULL COMMENT '启动时间',
  `is_run` int(11) DEFAULT NULL COMMENT '启动标识：0 未执行 1执行 2执行完成',
  `name` varchar(255) DEFAULT NULL COMMENT '模板名称',
  `auditing` int(11) DEFAULT NULL COMMENT '审核状态：0未审核 1已审核 2审核不通过',
  `type` int(11) DEFAULT NULL COMMENT '行业标识：1医药行业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动化营销模板表';

-- ----------------------------
-- Table structure for base_goods_medicine_dosage
-- ----------------------------
DROP TABLE IF EXISTS `base_goods_medicine_dosage`;
CREATE TABLE `base_goods_medicine_dosage` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `medicine_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `approval_number` varchar(255) DEFAULT NULL COMMENT '批准文号',
  `bar_code` varchar(255) DEFAULT NULL COMMENT '条形码',
  `once_use_number` int(11) DEFAULT NULL COMMENT '一次使用量',
  `day_use_number` int(11) DEFAULT NULL COMMENT '每天使用次数',
  `packing_specifications` int(11) DEFAULT NULL COMMENT '规格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='基础药品用法用量表';

-- ----------------------------
-- Table structure for company_department
-- ----------------------------
DROP TABLE IF EXISTS `company_department`;
CREATE TABLE `company_department` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `cid` bigint(20) DEFAULT NULL COMMENT '公司id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `code` varchar(255) DEFAULT NULL COMMENT '编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `parent_dept_id` bigint(20) DEFAULT NULL COMMENT '父部门编码id',
  `leader_id` bigint(20) DEFAULT NULL COMMENT '领导ID',
  `company_type` int(11) DEFAULT '0' COMMENT '部门类型 1、机构 2、团队',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门表';

-- ----------------------------
-- Table structure for company_info
-- ----------------------------
DROP TABLE IF EXISTS `company_info`;
CREATE TABLE `company_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `intro` varchar(2000) DEFAULT NULL COMMENT '介绍',
  `business` varchar(255) DEFAULT NULL COMMENT '经营类型',
  `business_license` varchar(255) DEFAULT NULL COMMENT '营业执照',
  `key_word` varchar(255) DEFAULT NULL COMMENT '关键字',
  `code` varchar(255) DEFAULT NULL COMMENT '编码',
  `logo` varchar(255) DEFAULT NULL COMMENT '公司logo信息',
  `office_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `contact_type` int(11) DEFAULT NULL COMMENT '客户类型 1连锁 2单店',
  `lease_ccessories` varchar(255) DEFAULT NULL COMMENT '合同附件',
  `contact_person` varchar(255) DEFAULT NULL COMMENT '客户联系人',
  `contact_phone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `contact_title` varchar(255) DEFAULT NULL COMMENT '联系人职位',
  `contact_address` varchar(255) DEFAULT NULL COMMENT '联系人地址',
  `sms_num` int(11) DEFAULT NULL COMMENT '短信充值数量',
  `industry_type` int(11) DEFAULT NULL COMMENT '行业标识 ：1  医药行业',
  `sms_recharge` int(11) DEFAULT NULL COMMENT '标记用户是否进行过充值 0没充过 1充过',
  `create_sequence_code` int(4) DEFAULT NULL COMMENT '公司创建顺序码 数字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='企业信息表';

-- ----------------------------
-- Table structure for company_pay_config
-- ----------------------------
DROP TABLE IF EXISTS `company_pay_config`;
CREATE TABLE `company_pay_config` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `wechat_paterner_key` varchar(255) DEFAULT NULL COMMENT '微信商户key',
  `wechat_appid` varchar(255) DEFAULT NULL COMMENT '商户id',
  `wechat_partner` varchar(255) DEFAULT NULL COMMENT '商户号',
  `alipay_pid` varchar(255) DEFAULT NULL COMMENT '支付宝pid',
  `alipay_appid` varchar(255) DEFAULT NULL COMMENT '支付宝appid',
  `alipay_merchants_private_key` text COMMENT '支付宝商户公钥',
  `alipay_merchants_public_key` text COMMENT '支付宝商户公钥',
  `alipay_public_key` text COMMENT '支付宝公钥',
  `wechat_certificate_path` varchar(255) DEFAULT NULL COMMENT '微信证书地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户支付配置表';

-- ----------------------------
-- Table structure for company_social_account
-- ----------------------------
DROP TABLE IF EXISTS `company_social_account`;
CREATE TABLE `company_social_account` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `name` varchar(255) DEFAULT NULL COMMENT '社交账号名',
  `type` varchar(255) DEFAULT NULL COMMENT '账号类型 weibo;wechat;qq等',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `bind_status` int(11) DEFAULT '0' COMMENT '绑定状态  0：未绑定；1：绑定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for dock_authorize_info
-- ----------------------------
DROP TABLE IF EXISTS `dock_authorize_info`;
CREATE TABLE `dock_authorize_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `product_id` bigint(20) DEFAULT NULL COMMENT ' 对接产品id',
  `auth_num` bigint(20) DEFAULT NULL COMMENT '授权次数',
  `stop_time` datetime DEFAULT NULL COMMENT '截止时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步权限表';

-- ----------------------------
-- Table structure for dock_product_service
-- ----------------------------
DROP TABLE IF EXISTS `dock_product_service`;
CREATE TABLE `dock_product_service` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `name` varchar(50) DEFAULT NULL COMMENT '服务名称',
  `description` varchar(255) DEFAULT NULL COMMENT '服务描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步权限表';

-- ----------------------------
-- Table structure for dock_product_synch
-- ----------------------------
DROP TABLE IF EXISTS `dock_product_synch`;
CREATE TABLE `dock_product_synch` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `product_id` bigint(20) DEFAULT NULL COMMENT '对接服务id',
  `store_id` bigint(20) DEFAULT NULL COMMENT '门店id',
  `crm_role_id` bigint(20) DEFAULT NULL COMMENT 'crm角色id',
  `open_state` int(11) DEFAULT '1' COMMENT '开通状态 0未开通 1开通  默认 1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='同步权限表';

-- ----------------------------
-- Table structure for goods_base_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_base_info`;
CREATE TABLE `goods_base_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '所属品牌',
  `category_name` varchar(255) DEFAULT NULL COMMENT '所属品类',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称(必填)',
  `goods_desc` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `specifications` varchar(255) DEFAULT NULL COMMENT '规格',
  `weight` varchar(255) DEFAULT NULL COMMENT '商品重量',
  `price` bigint(20) DEFAULT NULL COMMENT '价格(单位分)',
  `goods_number` varchar(255) DEFAULT NULL COMMENT '商品编号(必填不可重)',
  `company` varchar(255) DEFAULT NULL COMMENT '单位',
  `bar_code` varchar(255) DEFAULT NULL COMMENT '条形码(不可重)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品表';

-- ----------------------------
-- Table structure for goods_extra_info
-- ----------------------------
DROP TABLE IF EXISTS `goods_extra_info`;
CREATE TABLE `goods_extra_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `general_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '通用名称',
  `english_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '英文名称',
  `component` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '成分',
  `adaptation_symptoms` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '适应症状',
  `usage_dosage` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '用法用量',
  `adverse_reaction` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '不良反应',
  `taboo` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '禁忌',
  `matters_attention` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '注意事项',
  `storagec` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '储藏',
  `term_validity` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '有效期',
  `approval_number` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '批准文号',
  `production_company` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '生产企业',
  `production_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '生产地址',
  `enterprise_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '企业电话',
  `course_cycle` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '疗程周期',
  `shelf_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '上架状态',
  `shelf_time` timestamp NULL DEFAULT NULL COMMENT '上架时间',
  `hot_goods` int(11) DEFAULT '0' COMMENT '是否热卖品 0否 1是',
  `main_push` int(11) DEFAULT '0' COMMENT '是否主推品  0否 1是',
  `new_goods` int(11) DEFAULT '0' COMMENT '是否新品  0否 1是',
  `error_correct` int(11) DEFAULT '0' COMMENT '是否标记纠错(默认0，需要纠错1)',
  `use_num` int(11) DEFAULT NULL COMMENT '用药次数',
  `max_dosage` int(11) DEFAULT NULL COMMENT '每次最大用量',
  `use_scheme` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用药方案',
  `packing_specifications` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '包装规格',
  `approval_number_source` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '批准文号(不含中文)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品医药行业';

-- ----------------------------
-- Table structure for goods_standard_ec
-- ----------------------------
DROP TABLE IF EXISTS `goods_standard_ec`;
CREATE TABLE `goods_standard_ec` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `abstract_info` varchar(255) DEFAULT NULL COMMENT '商品摘要',
  `label` varchar(255) DEFAULT NULL COMMENT '商品标签',
  `info` varchar(255) DEFAULT NULL COMMENT '商品详细信息',
  `property` varchar(255) DEFAULT NULL COMMENT '商品属性',
  `discount` varchar(11) DEFAULT NULL COMMENT '是否支持打折',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品电商行业';

-- ----------------------------
-- Table structure for open_mp_account
-- ----------------------------
DROP TABLE IF EXISTS `open_mp_account`;
CREATE TABLE `open_mp_account` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `authorizer_appid` varchar(200) DEFAULT '' COMMENT '授权的第三方账号的appid',
  `authorizer_access_token` varchar(200) DEFAULT '' COMMENT '授权的第三方账号的token',
  `jsapi_ticket` varchar(200) DEFAULT '' COMMENT 'JS调用令牌',
  `nick_name` varchar(100) DEFAULT '' COMMENT '昵称',
  `head_img` varchar(300) DEFAULT '' COMMENT '头像',
  `user_name` varchar(100) DEFAULT '' COMMENT '系统用户名',
  `principal_name` varchar(100) DEFAULT '' COMMENT '主体名称',
  `appid` varchar(50) DEFAULT '' COMMENT '开放平台的appid',
  `verify_ticket` varchar(200) DEFAULT '' COMMENT '票根',
  `authorizer_refresh_token` varchar(200) DEFAULT '' COMMENT '刷新token',
  `token_time` timestamp NULL DEFAULT NULL COMMENT 'authorizerAccessToken的更新时间',
  `service_type_info` int(11) DEFAULT '0' COMMENT '授权方公众号类型，0代表订阅号，1代表由历史老帐号升级后的订阅号，2代表服务号',
  `token_status` int(11) DEFAULT '1' COMMENT 'authorizerAccessToken的状态【0：失效；1：有效】',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信授权账户信息表';

-- ----------------------------
-- Table structure for open_mp_ticket
-- ----------------------------
DROP TABLE IF EXISTS `open_mp_ticket`;
CREATE TABLE `open_mp_ticket` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `verify_ticket` varchar(200) CHARACTER SET utf8 DEFAULT '' COMMENT '微信开放平台票根凭证',
  `component_access_token` varchar(200) CHARACTER SET utf8 DEFAULT '' COMMENT '接口调用凭据',
  `ticket_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近更新ticket和token的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信开放平台账户的ticket信息';

-- ----------------------------
-- Table structure for operator_person_info
-- ----------------------------
DROP TABLE IF EXISTS `operator_person_info`;
CREATE TABLE `operator_person_info` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `type` int(11) DEFAULT NULL COMMENT '发送类型',
  `name` varchar(255) DEFAULT NULL COMMENT '运营人员名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='运营人员列表';

-- ----------------------------
-- Table structure for sms_public_send_record
-- ----------------------------
DROP TABLE IF EXISTS `sms_public_send_record`;
CREATE TABLE `sms_public_send_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `check_code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `expire_time` datetime DEFAULT NULL COMMENT '失效时间',
  `is_used` int(11) DEFAULT '0' COMMENT '是否使用 0未使用 1使用 默认为0',
  `using_time` datetime DEFAULT NULL COMMENT '使用时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='公共库短信发送表';

-- ----------------------------
-- Table structure for sms_use_record
-- ----------------------------
DROP TABLE IF EXISTS `sms_use_record`;
CREATE TABLE `sms_use_record` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `cid` bigint(20) DEFAULT NULL COMMENT '公司id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `msg_type` int(11) DEFAULT NULL COMMENT '1系统短信 2群发短信 3短信充值 4通知短信',
  `msg_tittle` varchar(255) DEFAULT NULL COMMENT '短信名称',
  `msg_counts` int(11) DEFAULT NULL COMMENT '短信数量',
  `batch_num` varchar(255) DEFAULT NULL COMMENT '批次号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='酷客短信储值消耗表';

-- ----------------------------
-- Table structure for sys_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority`;
CREATE TABLE `sys_authority` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `weight` int(11) DEFAULT NULL COMMENT '权重',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `name_en` varchar(255) DEFAULT NULL COMMENT '权限英文 用于shiro',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `parent_code` bigint(20) DEFAULT NULL COMMENT '父编码',
  `type` int(11) DEFAULT '0' COMMENT '0：菜单权限；1：按钮权限',
  `product_id` bigint(20) DEFAULT NULL,
  `menu_type` varchar(255) DEFAULT NULL COMMENT '权限分类',
  `menu_icon` varchar(255) DEFAULT NULL COMMENT '权限图标',
  `menu_desc` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `login_authority` varchar(255) DEFAULT NULL COMMENT '标识login权限',
  `permission_level` int(11) DEFAULT NULL COMMENT '表示权限等级，1为基础权限',
  `menu_type_en` varchar(255) DEFAULT NULL COMMENT '权限类型英语',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='权限表';

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `cid` bigint(20) DEFAULT NULL COMMENT '公司id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `code` varchar(255) DEFAULT NULL COMMENT '权限编码',
  `recent_operating_user` varchar(255) DEFAULT NULL COMMENT '最近操作人',
  `recent_operating_time` datetime DEFAULT NULL COMMENT '最近操作时间',
  `first_operating_user` varchar(255) DEFAULT NULL COMMENT '第一次操作人',
  `operation` int(11) DEFAULT '0' DEFAULT NULL COMMENT '权限id 0菜单权限 1按钮权限',
  `product_id` bigint(20) DEFAULT NULL COMMENT '对接系统的id',
  `product_role_id` bigint(20) DEFAULT NULL COMMENT '对接系统的角色id',
  `external_authority` varchar(255) DEFAULT NULL COMMENT '外部应用权限(CRM权限、门店APP权限)',  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Table structure for sys_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_authority`;
CREATE TABLE `sys_role_authority` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `login_authority` varchar(255) DEFAULT NULL COMMENT '备注',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `authority_id` bigint(20) DEFAULT NULL COMMENT '权限id',
  `authority_name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `authority_name_en` varchar(255) DEFAULT NULL COMMENT '权限名称英语缩写',
  `base_authority` int(11) DEFAULT '0' COMMENT '是否拥有基础权限 0未拥有 1拥有',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色权限表';

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `cid` bigint(20) DEFAULT NULL COMMENT '公司id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `account` varchar(255) DEFAULT NULL COMMENT '手机号',
  `phone` varchar(255) DEFAULT NULL COMMENT '固定电话',
  `pwd` varchar(255) DEFAULT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `district_name` varchar(255) DEFAULT NULL COMMENT '所属地区',
  `industry` varchar(255) DEFAULT NULL COMMENT '行业',
  `company` varchar(255) DEFAULT NULL COMMENT '企业',
  `company_code` varchar(255) DEFAULT NULL COMMENT '企业编码',
  `job` varchar(255) DEFAULT NULL COMMENT '职位',
  `hobby` varchar(255) DEFAULT NULL COMMENT '爱好',
  `code` varchar(255) DEFAULT NULL COMMENT '编码',
  `status` int(11) DEFAULT '0' COMMENT '状态 0：正常；1：失效',
  `department_id` bigint(20) DEFAULT NULL COMMENT '部门编号',
  `social_account` varchar(255) DEFAULT NULL COMMENT '社交账号 json存储：类型、名称、绑定状态',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `gender` varchar(255) DEFAULT NULL COMMENT '性别，m：男、f：女、n：未知',
  `stop_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '账户停用时间',
  `job_number` varchar(255) DEFAULT NULL COMMENT '工号',
  `expiry_time` datetime DEFAULT NULL COMMENT '账号到期时间',
  `app_identity` int(11) DEFAULT NULL COMMENT '移动端对应的身份 0老板 1店员',
  `data_authority` int(11) DEFAULT '0' COMMENT '数据权限 0全部 1门店',
  `third_token` varchar(255) DEFAULT NULL COMMENT '第三方token',
  `third_token_expiry_time` datetime DEFAULT NULL COMMENT 'token失效时间',
  `agreement` int(11) DEFAULT '0' COMMENT '0：不同意(默认) 1：同意',
  `is_first_login` int(11) DEFAULT NULL COMMENT '用来表示初次登陆，0表示初次，1表示非初次',
  `access_token` varchar(255) DEFAULT NULL COMMENT 'access_token',
  `is_super` int(11) DEFAULT '0'  COMMENT '是否事超级管理员  0不是  1是',
  `user_identity` int(11) DEFAULT '0'  COMMENT '业务权限标记|用户业务身份 1个人、2管理',  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户角色关系表';



-- ----------------------------
-- Table structure for sys_role_attribute
-- 角色属性关系表
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_attribute`;
CREATE TABLE `sys_role_attribute` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT NULL COMMENT '公司id',
  `role_id` bigint(20) COMMENT '角色id',
  `attribute_id` bigint(20) COMMENT '属性id', 
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='角色属性关系表';



-- ----------------------------
-- Table structure for sys_attribute
-- 数据属性表
-- ----------------------------
DROP TABLE IF EXISTS `sys_attribute`;
CREATE TABLE `sys_attribute` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT NULL COMMENT '公司id',
  `attribute_name` varchar(255) CHARACTER SET utf8 COMMENT '属性名称',
  `attribute_seat` varchar(255) CHARACTER SET utf8 COMMENT '属性位置(属性所在表)',
  `attribute_key` varchar(255) CHARACTER SET utf8 COMMENT '属性键(属性所在表中的字段)',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='数据属性表';



-- ----------------------------
-- Table structure for sys_user_attribute
-- 用户特征数据表
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_attribute`;
CREATE TABLE `sys_user_attribute` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT NULL COMMENT '公司id',
  `user_id` bigint(20) COMMENT '用户id',
  `attribute_value` varchar(255) CHARACTER SET utf8 COMMENT '属性值(对应一组数据权限)',
  `attribute_id` bigint(20) COMMENT '属性id',
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户特征数据表';


 
-- ----------------------------
-- Table structure for company_sms_autograph 
-- 商家短信签名表|用户发送短信时 短信内容头部拼接的内容
-- ----------------------------
DROP TABLE IF EXISTS `company_sms_autograph`;
CREATE TABLE `company_sms_autograph` (
  `id` bigint(20) NOT NULL COMMENT 'mycat生成唯一id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `delete_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '删除时间',
  `is_deleted` int(11) DEFAULT '0' COMMENT '删除标记',
  `cid` bigint(20) DEFAULT NULL COMMENT '公司id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '短信签名名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='商家短信签名表';


-- ----------------------------
-- Table structure for email_pubilc_send_record
-- ----------------------------
DROP TABLE IF EXISTS `email_pubilc_send_record`;
CREATE TABLE `email_pubilc_send_record` (
  `id` BIGINT(20) NOT NULL COMMENT '主键id',
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` TIMESTAMP NULL DEFAULT NULL COMMENT '最近更新时间',
  `create_user_id` VARCHAR(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建人id',
  `delete_time` DATETIME DEFAULT NULL COMMENT '删除时间',
  `is_deleted` INT(11) DEFAULT NULL COMMENT '删除标记 0未删除，1已删除',
  `cid` BIGINT(20) DEFAULT NULL COMMENT '公司id',
  `send_email` VARCHAR(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮件发送方',
  `receive_email` VARCHAR(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮件接收方',
  `title` VARCHAR(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮件标题',
  `content` LONGTEXT COLLATE utf8mb4_bin COMMENT '邮件正文内容',
  `send_from` VARCHAR(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮件发送服务商',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;






























