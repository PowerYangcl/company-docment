package beanToMessage;

public class AccountMessage {

	private String B040002;//帐号，填写B040026对应元素值或者B040040对应元素值;部分应用无上述概念，可填写手机号或者邮箱地址等信息
	private String B040026;//用户名，包括会员名，一般为注册时用户填写，如淘宝会员名，论坛用户名等
	private String B040040;//用户IM号/应用号/会员卡号，可见，一般为系统自动分配（也可自定义），如QQ号、易信号、微信号、携程会员卡号等
	private String B040003;//用户内部ID，身份主键，应用自动分配唯一ID，一般不可见，没内部ID概念的应用填值同 B040002 元素值，即账号值
	private String B020005;//手机号
	private String B040023;//邮箱地址
	private String X900011;//通行证，类似用户名，一般为注册时用户填写，如YY通行证等
	private String B040041;//用户内部IM号，不可见，目前仅针对WX，格式如wxid_94374334343
	private String X900015;//用户头像，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中
	private String B040005;//用户登录密码" fmt="base64
	private String B040004;//昵称" fmt="base64
	private String B010001;//真实姓名" fmt="base64
	private String B010015;//年龄
	private String B010011;//性别， 0 未知， 1 男性， 2 女性
	private String B010014;//出生日期
	private String G020026;//注册时间
	private String B030002;//注册城市
	private String B040008;//注册类型，0 用户名注册 1 手机号 2 邮箱
	private String F020001;//注册IP地址
	private String F020006;//端口号
	private String B020004;//固定电话
	private String B030004;//证件类型 参考GAT517-2004标准，常用字典码 111 居民身份证，113 户口簿，114 军官证，335 机动车驾驶证，414 普通护照 990 其他
	private String B030005;//证件号码
	private String B030029;//证件图片，认证时用，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中
	private String B020008;//联系地址" fmt="base64
	private String B030011;//居住地" fmt="base64"  />
	private String B010026;//出生地，籍贯" fmt="base64"  />
	private String B030024;//职业名称" fmt="base64
	private String C040002;//注册终端MAC地址
	private String C050001;//移动终端IMEI/ESN/MEID
	private String H160001;//硬件特征串，用户终端硬件特征信息，由应用生成或获取
	private String B020007;//移动终端IMSI
	private String B040001;//合作账号类型，如通过支付宝登录，则填写支付宝或者AliPay即可
	private String X900001;//关联的QQ号
	private String X900003;//关联的新浪微博账号
	private String X900005;//关联的支付宝账号
	private String X900016;//关联的微信账号
	private String B040029;//个性签名" fmt="base64
	private String B040030;//个人说明" fmt="base64
	private String F010001;//经度，浮点数表示形式，东经为正数西经为负数。移动终端注册时有效
	private String F010002;//纬度，浮点数表示形式，北纬为正数南纬为负数。移动终端注册时有效
	private String I020017;//位置信息
	private String H230001;//用户类型，01 司机/车主，02 乘客/用户，99 其他
	private String E010002;//所属公司,如：北京嘀嘀无限科技发展有限公司等
	private String C030901;//驾驶证档案号
	private String C030902;//驾驶证图片，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中
	private String H010003;//动作类型，字典码 1新增，2 删除，3 修改/更新
	private String I010005;//动作时间
	public String getB040002() {
		return B040002;
	}
	public void setB040002(String b040002) {
		B040002 = b040002;
	}
	public String getB040026() {
		return B040026;
	}
	public void setB040026(String b040026) {
		B040026 = b040026;
	}
	public String getB040040() {
		return B040040;
	}
	public void setB040040(String b040040) {
		B040040 = b040040;
	}
	public String getB040003() {
		return B040003;
	}
	public void setB040003(String b040003) {
		B040003 = b040003;
	}
	public String getB020005() {
		return B020005;
	}
	public void setB020005(String b020005) {
		B020005 = b020005;
	}
	public String getB040023() {
		return B040023;
	}
	public void setB040023(String b040023) {
		B040023 = b040023;
	}
	public String getX900011() {
		return X900011;
	}
	public void setX900011(String x900011) {
		X900011 = x900011;
	}
	public String getB040041() {
		return B040041;
	}
	public void setB040041(String b040041) {
		B040041 = b040041;
	}
	public String getX900015() {
		return X900015;
	}
	public void setX900015(String x900015) {
		X900015 = x900015;
	}
	public String getB040005() {
		return B040005;
	}
	public void setB040005(String b040005) {
		B040005 = b040005;
	}
	public String getB040004() {
		return B040004;
	}
	public void setB040004(String b040004) {
		B040004 = b040004;
	}
	public String getB010001() {
		return B010001;
	}
	public void setB010001(String b010001) {
		B010001 = b010001;
	}
	public String getB010015() {
		return B010015;
	}
	public void setB010015(String b010015) {
		B010015 = b010015;
	}
	public String getB010011() {
		return B010011;
	}
	public void setB010011(String b010011) {
		B010011 = b010011;
	}
	public String getB010014() {
		return B010014;
	}
	public void setB010014(String b010014) {
		B010014 = b010014;
	}
	public String getG020026() {
		return G020026;
	}
	public void setG020026(String g020026) {
		G020026 = g020026;
	}
	public String getB030002() {
		return B030002;
	}
	public void setB030002(String b030002) {
		B030002 = b030002;
	}
	public String getB040008() {
		return B040008;
	}
	public void setB040008(String b040008) {
		B040008 = b040008;
	}
	public String getF020001() {
		return F020001;
	}
	public void setF020001(String f020001) {
		F020001 = f020001;
	}
	public String getF020006() {
		return F020006;
	}
	public void setF020006(String f020006) {
		F020006 = f020006;
	}
	public String getB020004() {
		return B020004;
	}
	public void setB020004(String b020004) {
		B020004 = b020004;
	}
	public String getB030004() {
		return B030004;
	}
	public void setB030004(String b030004) {
		B030004 = b030004;
	}
	public String getB030005() {
		return B030005;
	}
	public void setB030005(String b030005) {
		B030005 = b030005;
	}
	public String getB030029() {
		return B030029;
	}
	public void setB030029(String b030029) {
		B030029 = b030029;
	}
	public String getB020008() {
		return B020008;
	}
	public void setB020008(String b020008) {
		B020008 = b020008;
	}
	public String getB030011() {
		return B030011;
	}
	public void setB030011(String b030011) {
		B030011 = b030011;
	}
	public String getB010026() {
		return B010026;
	}
	public void setB010026(String b010026) {
		B010026 = b010026;
	}
	public String getB030024() {
		return B030024;
	}
	public void setB030024(String b030024) {
		B030024 = b030024;
	}
	public String getC040002() {
		return C040002;
	}
	public void setC040002(String c040002) {
		C040002 = c040002;
	}
	public String getC050001() {
		return C050001;
	}
	public void setC050001(String c050001) {
		C050001 = c050001;
	}
	public String getH160001() {
		return H160001;
	}
	public void setH160001(String h160001) {
		H160001 = h160001;
	}
	public String getB020007() {
		return B020007;
	}
	public void setB020007(String b020007) {
		B020007 = b020007;
	}
	public String getB040001() {
		return B040001;
	}
	public void setB040001(String b040001) {
		B040001 = b040001;
	}
	public String getX900001() {
		return X900001;
	}
	public void setX900001(String x900001) {
		X900001 = x900001;
	}
	public String getX900003() {
		return X900003;
	}
	public void setX900003(String x900003) {
		X900003 = x900003;
	}
	public String getX900005() {
		return X900005;
	}
	public void setX900005(String x900005) {
		X900005 = x900005;
	}
	public String getX900016() {
		return X900016;
	}
	public void setX900016(String x900016) {
		X900016 = x900016;
	}
	public String getB040029() {
		return B040029;
	}
	public void setB040029(String b040029) {
		B040029 = b040029;
	}
	public String getB040030() {
		return B040030;
	}
	public void setB040030(String b040030) {
		B040030 = b040030;
	}
	public String getF010001() {
		return F010001;
	}
	public void setF010001(String f010001) {
		F010001 = f010001;
	}
	public String getF010002() {
		return F010002;
	}
	public void setF010002(String f010002) {
		F010002 = f010002;
	}
	public String getI020017() {
		return I020017;
	}
	public void setI020017(String i020017) {
		I020017 = i020017;
	}
	public String getH230001() {
		return H230001;
	}
	public void setH230001(String h230001) {
		H230001 = h230001;
	}
	public String getE010002() {
		return E010002;
	}
	public void setE010002(String e010002) {
		E010002 = e010002;
	}
	public String getC030901() {
		return C030901;
	}
	public void setC030901(String c030901) {
		C030901 = c030901;
	}
	public String getC030902() {
		return C030902;
	}
	public void setC030902(String c030902) {
		C030902 = c030902;
	}
	public String getH010003() {
		return H010003;
	}
	public void setH010003(String h010003) {
		H010003 = h010003;
	}
	public String getI010005() {
		return I010005;
	}
	public void setI010005(String i010005) {
		I010005 = i010005;
	}
	
	
}
