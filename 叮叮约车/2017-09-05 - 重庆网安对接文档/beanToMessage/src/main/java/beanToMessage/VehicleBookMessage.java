package beanToMessage;
/***
 * 租约车订单信息
 * @author pdjt
 *
 */
public class VehicleBookMessage {
	private String B040002;//账号" />
	private String B040003;//用户内部ID" />
	private String H230002;//联系人姓名" />
	private String H230003;//联系人手机号" />
	private String H230004;//联系人固定电话" />
	private String H230005;//联系人电子邮箱" />
	private String H230006;//联系人联系地址" />
	private String B020013;//收货人姓名" />
	private String B020014;//收货人手机号" />
	private String B020015;//收货人地址" />
	private String H090001;//订单号" />
	private String H230007;//下单时间/订单创建时间" />
	private String H230008;//订单内容(文本)" />
	private String H230009;//订单内容(语音)，该文件体于和xml一同位于zip文件中" />
	private String B020005;//下单客户端手机号" />
	private String F020004;//下单客户端IP" />
	private String F020006;//下单客户端端口" />
	private String C040002;//下单客户端MAC地址" />
	private String B020007;//下单客户端IMSI" />
	private String C050001;//下单客户端IMEI" />
	private String C040003;//下单客户端硬件特征串" />
	private String C020011;//下单终端型号，如Iphone4、三星note5等" />
	private String H230011;//车辆类型如：小型客车、大型客车" />
	private String H230012;//租约车类型 字典码 01 出租车 02 顺风车 03 快车 04 专车 05 巴士 06 代驾 07 租车 08 试驾 99 其他" />
	private String H230013;//租约车类型描述厂商自定义" />
	private String H230014;//乘客人数" />
	private String H230015;//预约上车时间" />
	private String H230016;//预约上车/取车位置详细地址" />
	private String H230017;//预约上车经度" />
	private String H230018;//预约上车纬度" />
	private String H230019;//预约下车/还车位置详细地址" />
	private String H230020;//预约下车经度" />
	private String H230021;//预约下车纬度" />
	private String H230022;//预约取车/上车城市" />
	private String H230023;//预约取车门店" />
	private String H230024;//预约取车门店地址" />
	private String H230025;//预约取车时间" />
	private String H230026;//预约还车/下车城市" />
	private String H230027;//预约还车门店" />
	private String H230028;//预约还车门店地址" />
	private String H230029;//预约还车时间" />
	private String H230030;//预约费用" />
	private String F010005;//出发机场/站点" />
	private String F010006;//到达机场/站点" />
	private String H090002;//航班号/火车车次号" />
	private String H010015;//预计起飞时间" />
	private String H010016;//预计到达时间" />
	private String H230031;//下单地址" />
	private String H230032;//买家客户端经度" />
	private String H230033;//买家客户端纬度" />
	private String H230034;//是否有人应答" />
	private String H230035;//接单时间" />
	private String H230036;//接单位置详细地址" />
	private String H230037;//接单经度" />
	private String H230038;//接单纬度" />
	private String C030009;//车辆ID" />
	private String C030015;//车辆基本信息，品牌+型号+颜色等" />
	private String E010002;//提供用车服务公司，如：滴滴出行、XX出租车公司、一嗨租车等" />
	private String H230039;//司机用户账号" />
	private String H230040;//司机用户内部ID" />
	private String H230041;//司机姓名" />
	private String H230042;//司机证件类型, 参考GAT517-2004标准，租车时提供" />
	private String H230043;//司机证件号码，租车时提供" />
	private String H230044;//司机手机号" />
	private String H230064;//关联订单号，如拼车类" />
	private String H230045;//上车时间/用车开始时间" />
	private String F010014;//上车地址/出发地详细地址" />
	private String F010010;//上车经度" />
	private String F010011;//上车纬度" />
	private String H230046;//下车时间/用车结束时间" />
	private String F010015;//下车地址/目的地" />
	private String F010012;//下车经度" />
	private String F010013;//下车纬度" />
	private String H230047;//取车/上车城市" />
	private String H230048;//取车门店" />
	private String H230049;//取车门店详细地址" />
	private String H230050;//取车时间" />
	private String H230051;//还车/下车城市" />
	private String H230052;//还车门店" />
	private String H230053;//还车门店详细地址" />
	private String H230054;//还车时间" />
	private String H230056;//实际用车费用" />
	private String H230055;//线路图，该文件体于和xml一同位于zip文件中" />
	private String H230010;//动作时间/当前时间" />
	private String H010003;//动作类型 字典码 52 下单 56 接单 96 取消订单 02 上车 03 下车 59 支付 61 退款 99 其他" />
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
	public String getH230002() {
		return H230002;
	}
	public void setH230002(String h230002) {
		H230002 = h230002;
	}
	public String getH230003() {
		return H230003;
	}
	public void setH230003(String h230003) {
		H230003 = h230003;
	}
	public String getH230004() {
		return H230004;
	}
	public void setH230004(String h230004) {
		H230004 = h230004;
	}
	public String getH230005() {
		return H230005;
	}
	public void setH230005(String h230005) {
		H230005 = h230005;
	}
	public String getH230006() {
		return H230006;
	}
	public void setH230006(String h230006) {
		H230006 = h230006;
	}
	public String getB020013() {
		return B020013;
	}
	public void setB020013(String b020013) {
		B020013 = b020013;
	}
	public String getB020014() {
		return B020014;
	}
	public void setB020014(String b020014) {
		B020014 = b020014;
	}
	public String getB020015() {
		return B020015;
	}
	public void setB020015(String b020015) {
		B020015 = b020015;
	}
	public String getH090001() {
		return H090001;
	}
	public void setH090001(String h090001) {
		H090001 = h090001;
	}
	public String getH230007() {
		return H230007;
	}
	public void setH230007(String h230007) {
		H230007 = h230007;
	}
	public String getH230008() {
		return H230008;
	}
	public void setH230008(String h230008) {
		H230008 = h230008;
	}
	public String getH230009() {
		return H230009;
	}
	public void setH230009(String h230009) {
		H230009 = h230009;
	}
	public String getB020005() {
		return B020005;
	}
	public void setB020005(String b020005) {
		B020005 = b020005;
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
	public String getC040002() {
		return C040002;
	}
	public void setC040002(String c040002) {
		C040002 = c040002;
	}
	public String getB020007() {
		return B020007;
	}
	public void setB020007(String b020007) {
		B020007 = b020007;
	}
	public String getC050001() {
		return C050001;
	}
	public void setC050001(String c050001) {
		C050001 = c050001;
	}
	public String getC040003() {
		return C040003;
	}
	public void setC040003(String c040003) {
		C040003 = c040003;
	}
	public String getC020011() {
		return C020011;
	}
	public void setC020011(String c020011) {
		C020011 = c020011;
	}
	public String getH230011() {
		return H230011;
	}
	public void setH230011(String h230011) {
		H230011 = h230011;
	}
	public String getH230012() {
		return H230012;
	}
	public void setH230012(String h230012) {
		H230012 = h230012;
	}
	public String getH230013() {
		return H230013;
	}
	public void setH230013(String h230013) {
		H230013 = h230013;
	}
	public String getH230014() {
		return H230014;
	}
	public void setH230014(String h230014) {
		H230014 = h230014;
	}
	public String getH230015() {
		return H230015;
	}
	public void setH230015(String h230015) {
		H230015 = h230015;
	}
	public String getH230016() {
		return H230016;
	}
	public void setH230016(String h230016) {
		H230016 = h230016;
	}
	public String getH230017() {
		return H230017;
	}
	public void setH230017(String h230017) {
		H230017 = h230017;
	}
	public String getH230018() {
		return H230018;
	}
	public void setH230018(String h230018) {
		H230018 = h230018;
	}
	public String getH230019() {
		return H230019;
	}
	public void setH230019(String h230019) {
		H230019 = h230019;
	}
	public String getH230020() {
		return H230020;
	}
	public void setH230020(String h230020) {
		H230020 = h230020;
	}
	public String getH230021() {
		return H230021;
	}
	public void setH230021(String h230021) {
		H230021 = h230021;
	}
	public String getH230022() {
		return H230022;
	}
	public void setH230022(String h230022) {
		H230022 = h230022;
	}
	public String getH230023() {
		return H230023;
	}
	public void setH230023(String h230023) {
		H230023 = h230023;
	}
	public String getH230024() {
		return H230024;
	}
	public void setH230024(String h230024) {
		H230024 = h230024;
	}
	public String getH230025() {
		return H230025;
	}
	public void setH230025(String h230025) {
		H230025 = h230025;
	}
	public String getH230026() {
		return H230026;
	}
	public void setH230026(String h230026) {
		H230026 = h230026;
	}
	public String getH230027() {
		return H230027;
	}
	public void setH230027(String h230027) {
		H230027 = h230027;
	}
	public String getH230028() {
		return H230028;
	}
	public void setH230028(String h230028) {
		H230028 = h230028;
	}
	public String getH230029() {
		return H230029;
	}
	public void setH230029(String h230029) {
		H230029 = h230029;
	}
	public String getH230030() {
		return H230030;
	}
	public void setH230030(String h230030) {
		H230030 = h230030;
	}
	public String getF010005() {
		return F010005;
	}
	public void setF010005(String f010005) {
		F010005 = f010005;
	}
	public String getF010006() {
		return F010006;
	}
	public void setF010006(String f010006) {
		F010006 = f010006;
	}
	public String getH090002() {
		return H090002;
	}
	public void setH090002(String h090002) {
		H090002 = h090002;
	}
	public String getH010015() {
		return H010015;
	}
	public void setH010015(String h010015) {
		H010015 = h010015;
	}
	public String getH010016() {
		return H010016;
	}
	public void setH010016(String h010016) {
		H010016 = h010016;
	}
	public String getH230031() {
		return H230031;
	}
	public void setH230031(String h230031) {
		H230031 = h230031;
	}
	public String getH230032() {
		return H230032;
	}
	public void setH230032(String h230032) {
		H230032 = h230032;
	}
	public String getH230033() {
		return H230033;
	}
	public void setH230033(String h230033) {
		H230033 = h230033;
	}
	public String getH230034() {
		return H230034;
	}
	public void setH230034(String h230034) {
		H230034 = h230034;
	}
	public String getH230035() {
		return H230035;
	}
	public void setH230035(String h230035) {
		H230035 = h230035;
	}
	public String getH230036() {
		return H230036;
	}
	public void setH230036(String h230036) {
		H230036 = h230036;
	}
	public String getH230037() {
		return H230037;
	}
	public void setH230037(String h230037) {
		H230037 = h230037;
	}
	public String getH230038() {
		return H230038;
	}
	public void setH230038(String h230038) {
		H230038 = h230038;
	}
	public String getC030009() {
		return C030009;
	}
	public void setC030009(String c030009) {
		C030009 = c030009;
	}
	public String getC030015() {
		return C030015;
	}
	public void setC030015(String c030015) {
		C030015 = c030015;
	}
	public String getE010002() {
		return E010002;
	}
	public void setE010002(String e010002) {
		E010002 = e010002;
	}
	public String getH230039() {
		return H230039;
	}
	public void setH230039(String h230039) {
		H230039 = h230039;
	}
	public String getH230040() {
		return H230040;
	}
	public void setH230040(String h230040) {
		H230040 = h230040;
	}
	public String getH230041() {
		return H230041;
	}
	public void setH230041(String h230041) {
		H230041 = h230041;
	}
	public String getH230042() {
		return H230042;
	}
	public void setH230042(String h230042) {
		H230042 = h230042;
	}
	public String getH230043() {
		return H230043;
	}
	public void setH230043(String h230043) {
		H230043 = h230043;
	}
	public String getH230044() {
		return H230044;
	}
	public void setH230044(String h230044) {
		H230044 = h230044;
	}
	public String getH230064() {
		return H230064;
	}
	public void setH230064(String h230064) {
		H230064 = h230064;
	}
	public String getH230045() {
		return H230045;
	}
	public void setH230045(String h230045) {
		H230045 = h230045;
	}
	public String getF010014() {
		return F010014;
	}
	public void setF010014(String f010014) {
		F010014 = f010014;
	}
	public String getF010010() {
		return F010010;
	}
	public void setF010010(String f010010) {
		F010010 = f010010;
	}
	public String getF010011() {
		return F010011;
	}
	public void setF010011(String f010011) {
		F010011 = f010011;
	}
	public String getH230046() {
		return H230046;
	}
	public void setH230046(String h230046) {
		H230046 = h230046;
	}
	public String getF010015() {
		return F010015;
	}
	public void setF010015(String f010015) {
		F010015 = f010015;
	}
	public String getF010012() {
		return F010012;
	}
	public void setF010012(String f010012) {
		F010012 = f010012;
	}
	public String getF010013() {
		return F010013;
	}
	public void setF010013(String f010013) {
		F010013 = f010013;
	}
	public String getH230047() {
		return H230047;
	}
	public void setH230047(String h230047) {
		H230047 = h230047;
	}
	public String getH230048() {
		return H230048;
	}
	public void setH230048(String h230048) {
		H230048 = h230048;
	}
	public String getH230049() {
		return H230049;
	}
	public void setH230049(String h230049) {
		H230049 = h230049;
	}
	public String getH230050() {
		return H230050;
	}
	public void setH230050(String h230050) {
		H230050 = h230050;
	}
	public String getH230051() {
		return H230051;
	}
	public void setH230051(String h230051) {
		H230051 = h230051;
	}
	public String getH230052() {
		return H230052;
	}
	public void setH230052(String h230052) {
		H230052 = h230052;
	}
	public String getH230053() {
		return H230053;
	}
	public void setH230053(String h230053) {
		H230053 = h230053;
	}
	public String getH230054() {
		return H230054;
	}
	public void setH230054(String h230054) {
		H230054 = h230054;
	}
	public String getH230056() {
		return H230056;
	}
	public void setH230056(String h230056) {
		H230056 = h230056;
	}
	public String getH230055() {
		return H230055;
	}
	public void setH230055(String h230055) {
		H230055 = h230055;
	}
	public String getH230010() {
		return H230010;
	}
	public void setH230010(String h230010) {
		H230010 = h230010;
	}
	public String getH010003() {
		return H010003;
	}
	public void setH010003(String h010003) {
		H010003 = h010003;
	}
	
	
}
