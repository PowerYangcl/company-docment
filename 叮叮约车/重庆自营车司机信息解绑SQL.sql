


#������Ӫ��˾����Ϣ���


ʾ����

#˾�������� �����
#�ֻ����룺 18323255625
#���ƺţ� XXX
#���֤�ţ� XXXXXXXXXXX



-- ��ȡ˾��ID
SELECT * FROM specialuserlogin s WHERE s.`userName` IN ('17830605986');
792086eb-72a6-4aa9-a7cf-83762c9831f7


-- ɾ���û����������
SELECT * FROM specialuserinfo WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialuserinfo WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# ɾ����ʻԱ��λ����
SELECT * FROM specialuserposition WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialuserposition WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# ɾ����������ģʽ����
SELECT * FROM specialorderdesignateset WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialorderdesignateset WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# ɾ���û��˻�������
SELECT * FROM specialuseraccount WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialuseraccount WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# ɾ���û��豸��¼������
SELECT * FROM specialuserloginrecord WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM specialuserloginrecord WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# ɾ��������Ϣ������---ɾ��֮ǰ�Ȳ�ѯ���ƺ��Ƿ��Ӧ
SELECT sv.`lisencePlate` FROM specialuservehicleinfo sv WHERE sv.`userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));

SELECT * FROM specialuservehicleinfo where userId in (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
delete from specialuservehicleinfo where userId in (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# ɾ��˾����֤��Ϣ������ ɾ��ǰ��ȷ�������Ƿ���ȷ
SELECT d.trueName FROM dd_special_user_auth_info d WHERE d.`specialUserId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));

SELECT * FROM dd_special_user_auth_info WHERE `specialUserId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM dd_special_user_auth_info WHERE `specialUserId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# ɾ�������û������ݣ�û������
SELECT * FROM dd_channel_ref_user WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));
DELETE FROM dd_channel_ref_user WHERE `userId` IN (SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986'));


# ɾ����������˾���˻�������
-- ��ȡ˾��ID
SELECT s.`suid` FROM specialuserlogin s WHERE s.`userName` IN ('17830605986');
792086eb-72a6-4aa9-a7cf-83762c9831f7

#�������Ŀ�
SELECT * FROM dingding_settlement_center.driver_account WHERE `driver_id` IN ('792086eb-72a6-4aa9-a7cf-83762c9831f7');
DELETE FROM dingding_settlement_center.driver_account WHERE `driver_id` IN ('792086eb-72a6-4aa9-a7cf-83762c9831f7');


# ɾ���û���¼��
SELECT * FROM specialuserlogin WHERE userName IN ('17830605986');
DELETE FROM specialuserlogin WHERE userName IN ('17830605986');