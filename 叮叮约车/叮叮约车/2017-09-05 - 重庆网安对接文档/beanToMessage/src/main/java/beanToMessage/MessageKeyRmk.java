package beanToMessage;

import java.util.HashMap;
import java.util.Map;
/****
 * 获取文档key对应的rmk
 * @author pdjt
 *
 */
public class MessageKeyRmk {

	public static String getKeyRmk(String key){
		return accountKeyMap.get(key);
	}
	
	private static final Map<String,String> accountKeyMap = new HashMap<String,String>();
	static {
		//用户注册信息
		accountKeyMap.put("B040002","帐号，填写B040026对应元素值或者B040040对应元素值;部分应用无上述概念，可填写手机号或者邮箱地址等信息  ");
		accountKeyMap.put("B040026","用户名，包括会员名，一般为注册时用户填写，如淘宝会员名，论坛用户名等 ");
		accountKeyMap.put("B040040","用户IM号/应用号/会员卡号，可见，一般为系统自动分配（也可自定义），如QQ号、易信号、微信号、携程会员卡号等 ");
		accountKeyMap.put("B040003","用户内部ID，身份主键，应用自动分配唯一ID，一般不可见，没内部ID概念的应用填值同 B040002 元素值，即账号值  ");
		accountKeyMap.put("B020005","手机号");
		accountKeyMap.put("B040023","邮箱地址  ");
		accountKeyMap.put("X900011","通行证，类似用户名，一般为注册时用户填写，如YY通行证等   ");
		accountKeyMap.put("B040041","用户内部IM号，不可见，目前仅针对WX，格式如wxid_94374334343   ");
		accountKeyMap.put("X900015","用户头像，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中 ");
		accountKeyMap.put("B040005","用户登录密码");
		accountKeyMap.put("B040004","昵称");
		accountKeyMap.put("B010001","真实姓名");
		accountKeyMap.put("B010015","年龄 ");
		accountKeyMap.put("B010011","性别， 0 未知， 1 男性， 2 女性  ");
		accountKeyMap.put("B010014","出生日期  ");
		accountKeyMap.put("G020026","注册时间  ");
		accountKeyMap.put("B030002","注册城市  ");
		accountKeyMap.put("B040008","注册类型，0 用户名注册 1 手机号 2 邮箱   ");
		accountKeyMap.put("F020001","注册IP地址");
		accountKeyMap.put("F020006","端口号");
		accountKeyMap.put("B020004","固定电话  ");
		accountKeyMap.put("B030004","证件类型 参考GAT517-2004标准，常用字典码 111 居民身份证，113 户口簿，114 军官证，335 机动车驾驶证，414 普通护照 990 其他 ");
		accountKeyMap.put("B030005","证件号码  ");
		accountKeyMap.put("B030029","证件图片，认证时用，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中   ");
		accountKeyMap.put("B020008","联系地址");
		accountKeyMap.put("B030011","居住地");
		accountKeyMap.put("B010026","出生地，籍贯");
		accountKeyMap.put("B030024","职业名称");
		accountKeyMap.put("C040002","注册终端MAC地址  ");
		accountKeyMap.put("C050001","移动终端IMEI/ESN/MEID");
		accountKeyMap.put("H160001","硬件特征串，用户终端硬件特征信息，由应用生成或获取   ");
		accountKeyMap.put("B020007","移动终端IMSI ");
		accountKeyMap.put("B040001","合作账号类型，如通过支付宝登录，则填写支付宝或者AliPay即可   ");
		accountKeyMap.put("X900001","关联的QQ号");
		accountKeyMap.put("X900003","关联的新浪微博账号   ");
		accountKeyMap.put("X900005","关联的支付宝账号 ");
		accountKeyMap.put("X900016","关联的微信账号   ");
		accountKeyMap.put("B040029","个性签名");
		accountKeyMap.put("B040030","个人说明");
		accountKeyMap.put("F010001","经度，浮点数表示形式，东经为正数西经为负数。移动终端注册时有效   ");
		accountKeyMap.put("F010002","纬度，浮点数表示形式，北纬为正数南纬为负数。移动终端注册时有效   ");
		accountKeyMap.put("I020017","位置信息  ");
		accountKeyMap.put("H230001","用户类型，01 司机/车主，02 乘客/用户，99 其他");
		accountKeyMap.put("E010002","所属公司,如：北京嘀嘀无限科技发展有限公司等  ");
		accountKeyMap.put("C030901","驾驶证档案号 ");
		accountKeyMap.put("C030902","驾驶证图片，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中   ");
		accountKeyMap.put("H010003","动作类型，字典码 1新增，2 删除，3 修改/更新  ");
		accountKeyMap.put("I010005","动作时间  ");
		
		//租约车订单信息
		accountKeyMap.put("B040002","账号" );
		accountKeyMap.put("B040003","用户内部ID" );
		accountKeyMap.put("H230002","联系人姓名" );
		accountKeyMap.put("H230003","联系人手机号" );
		accountKeyMap.put("H230004","联系人固定电话" );
		accountKeyMap.put("H230005","联系人电子邮箱" );
		accountKeyMap.put("H230006","联系人联系地址" );
		accountKeyMap.put("B020013","收货人姓名" );
		accountKeyMap.put("B020014","收货人手机号" );
		accountKeyMap.put("B020015","收货人地址" );
		accountKeyMap.put("H090001","订单号" );
		accountKeyMap.put("H230007","下单时间/订单创建时间" );
		accountKeyMap.put("H230008","订单内容(文本)" );
		accountKeyMap.put("H230009","订单内容(语音)，该文件体于和xml一同位于zip文件中" );
		accountKeyMap.put("B020005","下单客户端手机号" );
		accountKeyMap.put("F020004","下单客户端IP" );
		accountKeyMap.put("F020006","下单客户端端口" );
		accountKeyMap.put("C040002","下单客户端MAC地址" );
		accountKeyMap.put("B020007","下单客户端IMSI" );
		accountKeyMap.put("C050001","下单客户端IMEI" );
		accountKeyMap.put("C040003","下单客户端硬件特征串" );
		accountKeyMap.put("C020011","下单终端型号，如Iphone4、三星note5等" );
		accountKeyMap.put("H230011","车辆类型如：小型客车、大型客车" );
		accountKeyMap.put("H230012","租约车类型 字典码 01 出租车 02 顺风车 03 快车 04 专车 05 巴士 06 代驾 07 租车 08 试驾 99 其他" );
		accountKeyMap.put("H230013","租约车类型描述厂商自定义" );
		accountKeyMap.put("H230014","乘客人数" );
		accountKeyMap.put("H230015","预约上车时间" );
		accountKeyMap.put("H230016","预约上车/取车位置详细地址" );
		accountKeyMap.put("H230017","预约上车经度" );
		accountKeyMap.put("H230018","预约上车纬度" );
		accountKeyMap.put("H230019","预约下车/还车位置详细地址" );
		accountKeyMap.put("H230020","预约下车经度" );
		accountKeyMap.put("H230021","预约下车纬度" );
		accountKeyMap.put("H230022","预约取车/上车城市" );
		accountKeyMap.put("H230023","预约取车门店" );
		accountKeyMap.put("H230024","预约取车门店地址" );
		accountKeyMap.put("H230025","预约取车时间" );
		accountKeyMap.put("H230026","预约还车/下车城市" );
		accountKeyMap.put("H230027","预约还车门店" );
		accountKeyMap.put("H230028","预约还车门店地址" );
		accountKeyMap.put("H230029","预约还车时间" );
		accountKeyMap.put("H230030","预约费用" );
		accountKeyMap.put("F010005","出发机场/站点" );
		accountKeyMap.put("F010006","到达机场/站点" );
		accountKeyMap.put("H090002","航班号/火车车次号" );
		accountKeyMap.put("H010015","预计起飞时间" );
		accountKeyMap.put("H010016","预计到达时间" );
		accountKeyMap.put("H230031","下单地址" );
		accountKeyMap.put("H230032","买家客户端经度" );
		accountKeyMap.put("H230033","买家客户端纬度" );
		accountKeyMap.put("H230034","是否有人应答" );
		accountKeyMap.put("H230035","接单时间" );
		accountKeyMap.put("H230036","接单位置详细地址" );
		accountKeyMap.put("H230037","接单经度" );
		accountKeyMap.put("H230038","接单纬度" );
		accountKeyMap.put("C030009","车辆ID" );
		accountKeyMap.put("C030015","车辆基本信息，品牌+型号+颜色等" );
		accountKeyMap.put("E010002","提供用车服务公司，如：滴滴出行、XX出租车公司、一嗨租车等" );
		accountKeyMap.put("H230039","司机用户账号" );
		accountKeyMap.put("H230040","司机用户内部ID" );
		accountKeyMap.put("H230041","司机姓名" );
		accountKeyMap.put("H230042","司机证件类型, 参考GAT517-2004标准，租车时提供" );
		accountKeyMap.put("H230043","司机证件号码，租车时提供" );
		accountKeyMap.put("H230044","司机手机号" );
		accountKeyMap.put("H230064","关联订单号，如拼车类" );
		accountKeyMap.put("H230045","上车时间/用车开始时间" );
		accountKeyMap.put("F010014","上车地址/出发地详细地址" );
		accountKeyMap.put("F010010","上车经度" );
		accountKeyMap.put("F010011","上车纬度" );
		accountKeyMap.put("H230046","下车时间/用车结束时间" );
		accountKeyMap.put("F010015","下车地址/目的地" );
		accountKeyMap.put("F010012","下车经度" );
		accountKeyMap.put("F010013","下车纬度" );
		accountKeyMap.put("H230047","取车/上车城市" );
		accountKeyMap.put("H230048","取车门店" );
		accountKeyMap.put("H230049","取车门店详细地址" );
		accountKeyMap.put("H230050","取车时间" );
		accountKeyMap.put("H230051","还车/下车城市" );
		accountKeyMap.put("H230052","还车门店" );
		accountKeyMap.put("H230053","还车门店详细地址" );
		accountKeyMap.put("H230054","还车时间" );
		accountKeyMap.put("H230056","实际用车费用" );
		accountKeyMap.put("H230055","线路图，该文件体于和xml一同位于zip文件中" );
		accountKeyMap.put("H230010","动作时间/当前时间" );
		accountKeyMap.put("H010003","动作类型 字典码 52 下单 56 接单 96 取消订单 02 上车 03 下车 59 支付 61 退款 99 其他" );
		
		//车辆信息 
		accountKeyMap.put("C030009","车辆ID，厂商内部给每辆车设定的唯一编号" );
		accountKeyMap.put("C030002","车牌号" );
		accountKeyMap.put("C030003","车架号" );
		accountKeyMap.put("C030004","车辆发动机号" );
		accountKeyMap.put("C010002","车辆品牌" );
		accountKeyMap.put("C010003","车辆型号" );
		accountKeyMap.put("C010004","车辆颜色" );
		accountKeyMap.put("C030010","车辆类型,如：小型客车、大型客车等" );
		accountKeyMap.put("C030011","车辆谍照" );
		accountKeyMap.put("C030012","车辆营运证件号码" );
		accountKeyMap.put("C030013","车辆保险单图片，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中" );
		accountKeyMap.put("C030014","车辆行驶证图片，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中" );
		accountKeyMap.put("E010002","车辆所属公司,如：北京嘀嘀无限科技发展有限公司等" );
		accountKeyMap.put("B030002","车辆所在城市" );
		accountKeyMap.put("H010003","动作类型，字典码 1 新增，2 删除，3 修改/更新" );
		accountKeyMap.put("I010005","动作时间" );
		
		//轨迹信息
		accountKeyMap.put("H090001","订单号" );
		accountKeyMap.put("H230039","司机用户账号" );
		accountKeyMap.put("H230040","司机用户内部ID" );
		accountKeyMap.put("H230058","乘客用户账号" );
		accountKeyMap.put("H230057","乘客用户内部ID" );
		accountKeyMap.put("C030009","车辆ID" );
		accountKeyMap.put("H230059","当前时间" );
		accountKeyMap.put("H230060","当前位置详细地址" );
		accountKeyMap.put("H230061","当前位置经度" );
		accountKeyMap.put("H230062","当前位置纬度" );
		accountKeyMap.put("H230063","轨迹类型 字典码 01 司机打点 02 车辆打点 03 乘客打点 04 订单关联 99 其他" );
		
		//司机车辆关联信息
		accountKeyMap.put("B040002","帐号" );
		accountKeyMap.put("B040003","用户内部ID" );
		accountKeyMap.put("C030009","车辆ID" );
		accountKeyMap.put("H010003","动作类型，字典码 1 新增，2 删除，3 修改/更新" );
		accountKeyMap.put("I010005","动作时间" );
		
		//第三方支付账户信息
		accountKeyMap.put("B040002","帐号" );
		accountKeyMap.put("B040003","用户内部ID" );
		accountKeyMap.put("B040010","用户支付/收款用帐号类型字典码 01 支付宝 02 财付通 04 PayPal 05 银联在线 06 微信支付 07 快钱支付 08 钱宝支付 09 百度钱包 99 其他" );
		accountKeyMap.put("B040011","用户支付/收款用帐号" );
		accountKeyMap.put("H010003","动作类型，字典码 1 创建，2 删除，3 修改/更新" );
		accountKeyMap.put("I010005","动作时间（绝对秒数）" );
		
		//登录日志
		accountKeyMap.put("B040002","帐号名，用户的登录名，会员名" );
		accountKeyMap.put("B040003","用户内部ID" );
		accountKeyMap.put("F040005","登录时间" );
		accountKeyMap.put("H010003","动作类型，字典码 上线=02，下线=03，未知=99" );
		accountKeyMap.put("F020004","登录ip地址" );
		accountKeyMap.put("F020006","端口号" );
		accountKeyMap.put("H070003","登陆来源，如：网站，移动终端" );
		accountKeyMap.put("C040002","终端MAC地址" );
		accountKeyMap.put("B020005","登录时的手机号，手机登录时有效" );
		accountKeyMap.put("C050001","移动终端IMEI，手机登录时有效" );
		accountKeyMap.put("B020007","移动终端IMSI，手机登录时有效" );
		accountKeyMap.put("H160001","硬件特征串，用户终端硬件特征信息，由应用生成或获取" );
		accountKeyMap.put("F010001","经度，浮点数表示形式，东经为正数西经为负数。手机登录时有效" );
		accountKeyMap.put("F010002","纬度，浮点数表示形式，北纬为正数南纬为负数。手机登录时有效" );
		accountKeyMap.put("I020017","位置信息" );
		accountKeyMap.put("F030002","热点AP编号/基站号" );
		accountKeyMap.put("F030005","热点AP/基站地址" );
		accountKeyMap.put("C020017","终端类型，如PC、手机、PAD等" );
		accountKeyMap.put("C020011","终端型号，如Iphone4、三星note5等" );
		accountKeyMap.put("C020009","终端操作系统类型，如android、ios、winphone等" );			
		accountKeyMap.put("C020005","终端操作系统版本，如android 5.0、ios 8等" );
		
	}
}
