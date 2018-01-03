


#重庆自营车司机信息解绑


示例：

#司机姓名： 王玉红
#手机号码： 18323255625
#车牌号： XXX
#身份证号： XXXXXXXXXXX



-- 获取司机ID
SELECT * FROM specialuserlogin s WHERE s.`userName` IN ('17830605986');
792086eb-72a6-4aa9-a7cf-83762c9831f7


-- 删除用户详情表数据
SELECT * FROM specialuserinfo WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialuserinfo WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# 删除驾驶员定位数据
SELECT * FROM specialuserposition WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialuserposition WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# 删除订单设置模式数据
SELECT * FROM specialorderdesignateset WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialorderdesignateset WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# 删除用户账户表数据
SELECT * FROM specialuseraccount WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialuseraccount WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# 删除用户设备记录表数据
SELECT * FROM specialuserloginrecord WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialuserloginrecord WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# 删除车辆信息表数据---删除之前先查询车牌号是否对应
SELECT sv.`lisencePlate` FROM specialuservehicleinfo sv WHERE sv.`userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));

SELECT * FROM specialuservehicleinfo where userId in (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
delete from specialuservehicleinfo where userId in (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# 删除司机认证信息表数据 删除前先确定姓名是否正确
SELECT d.trueName FROM dd_special_user_auth_info d WHERE d.`specialUserId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));

SELECT * FROM dd_special_user_auth_info WHERE `specialUserId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM dd_special_user_auth_info WHERE `specialUserId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# 删除渠道用户表数据，没有数据
SELECT * FROM dd_channel_ref_user WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM dd_channel_ref_user WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# 删除结算中心司机账户表数据
-- 获取司机ID
SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986');
792086eb-72a6-4aa9-a7cf-83762c9831f7

#结算中心库
SELECT * FROM dingding_settlement_center.driver_account WHERE `driver_id` IN ('792086eb-72a6-4aa9-a7cf-83762c9831f7');
DELETE FROM dingding_settlement_center.driver_account WHERE `driver_id` IN ('792086eb-72a6-4aa9-a7cf-83762c9831f7');


# 删除用户登录表
SELECT * FROM specialuserlogin WHERE userName IN ('17830605986');
DELETE FROM specialuserlogin WHERE userName IN ('17830605986');