package beanToMessage;
/***
 * 登录信息 
 * @author pdjt
 *
 */
public class LoginMessage {
	private String B040002;//帐号名，用户的登录名，会员名" />
	private String B040003;//用户内部ID" />
	private String F040005;//登录时间" />
	private String H010003;//动作类型，字典码 上线=02，下线=03，未知=99" />
	private String F020004;//登录ip地址" />
	private String F020006;//端口号" />
	private String H070003;//登陆来源，如：网站，移动终端" />
	private String C040002;//终端MAC地址" />
	private String B020005;//登录时的手机号，手机登录时有效" />
	private String C050001;//移动终端IMEI，手机登录时有效" />
	private String B020007;//移动终端IMSI，手机登录时有效" />
	private String H160001;//硬件特征串，用户终端硬件特征信息，由应用生成或获取" />
	private String F010001;//经度，浮点数表示形式，东经为正数西经为负数。手机登录时有效" />
	private String F010002;//纬度，浮点数表示形式，北纬为正数南纬为负数。手机登录时有效" />
	private String I020017;//位置信息" />
	private String F030002;//热点AP编号/基站号" />
	private String F030005;//热点AP/基站地址" />
	private String C020017;//终端类型，如PC、手机、PAD等" />
	private String C020011;//终端型号，如Iphone4、三星note5等" />
	private String C020009;//终端操作系统类型，如android、ios、winphone等" />			
	private String C020005;//终端操作系统版本，如android 5.0、ios 8等" />
	public String getB040002() {
		return B040002;
	}
	public void setB040002(String b040002) {
		B040002 = b040002;
	}
	public String getB040003() {
		return B040003;
	}
	public void setB040003(String b040003) {
		B040003 = b040003;
	}
	public String getF040005() {
		return F040005;
	}
	public void setF040005(String f040005) {
		F040005 = f040005;
	}
	public String getH010003() {
		return H010003;
	}
	public void setH010003(String h010003) {
		H010003 = h010003;
	}
	public String getF020004() {
		return F020004;
	}
	public void setF020004(String f020004) {
		F020004 = f020004;
	}
	public String getF020006() {
		return F020006;
	}
	public void setF020006(String f020006) {
		F020006 = f020006;
	}
	public String getH070003() {
		return H070003;
	}
	public void setH070003(String h070003) {
		H070003 = h070003;
	}
	public String getC040002() {
		return C040002;
	}
	public void setC040002(String c040002) {
		C040002 = c040002;
	}
	public String getB020005() {
		return B020005;
	}
	public void setB020005(String b020005) {
		B020005 = b020005;
	}
	public String getC050001() {
		return C050001;
	}
	public void setC050001(String c050001) {
		C050001 = c050001;
	}
	public String getB020007() {
		return B020007;
	}
	public void setB020007(String b020007) {
		B020007 = b020007;
	}
	public String getH160001() {
		return H160001;
	}
	public void setH160001(String h160001) {
		H160001 = h160001;
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
	public String getF030002() {
		return F030002;
	}
	public void setF030002(String f030002) {
		F030002 = f030002;
	}
	public String getF030005() {
		return F030005;
	}
	public void setF030005(String f030005) {
		F030005 = f030005;
	}
	public String getC020017() {
		return C020017;
	}
	public void setC020017(String c020017) {
		C020017 = c020017;
	}
	public String getC020011() {
		return C020011;
	}
	public void setC020011(String c020011) {
		C020011 = c020011;
	}
	public String getC020009() {
		return C020009;
	}
	public void setC020009(String c020009) {
		C020009 = c020009;
	}
	public String getC020005() {
		return C020005;
	}
	public void setC020005(String c020005) {
		C020005 = c020005;
	}
	
	
}
