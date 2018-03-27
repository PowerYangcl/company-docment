package beanToMessage;
/**
 * 车辆信息
 * @author pdjt
 *
 */
public class VehicleInfoMessage {
	private String C030009;//车辆ID，厂商内部给每辆车设定的唯一编号" />
	private String C030002;//车牌号" />
	private String C030003;//车架号" />
	private String C030004;//车辆发动机号" />
	private String C010002;//车辆品牌" />
	private String C010003;//车辆型号" />
	private String C010004;//车辆颜色" />
	private String C030010;//车辆类型,如：小型客车、大型客车等" />
	private String C030011;//车辆谍照" />
	private String C030012;//车辆营运证件号码" />
	private String C030013;//车辆保险单图片，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中" />
	private String C030014;//车辆行驶证图片，带有图片文件体，此字段填文件名，该文件体和xml一同位于zip文件中" />
	private String E010002;//车辆所属公司,如：北京嘀嘀无限科技发展有限公司等" />
	private String B030002;//车辆所在城市" />
	private String H010003;//动作类型，字典码 1 新增，2 删除，3 修改/更新" />
	public String getC030009() {
		return C030009;
	}
	public void setC030009(String c030009) {
		C030009 = c030009;
	}
	public String getC030002() {
		return C030002;
	}
	public void setC030002(String c030002) {
		C030002 = c030002;
	}
	public String getC030003() {
		return C030003;
	}
	public void setC030003(String c030003) {
		C030003 = c030003;
	}
	public String getC030004() {
		return C030004;
	}
	public void setC030004(String c030004) {
		C030004 = c030004;
	}
	public String getC010002() {
		return C010002;
	}
	public void setC010002(String c010002) {
		C010002 = c010002;
	}
	public String getC010003() {
		return C010003;
	}
	public void setC010003(String c010003) {
		C010003 = c010003;
	}
	public String getC010004() {
		return C010004;
	}
	public void setC010004(String c010004) {
		C010004 = c010004;
	}
	public String getC030010() {
		return C030010;
	}
	public void setC030010(String c030010) {
		C030010 = c030010;
	}
	public String getC030011() {
		return C030011;
	}
	public void setC030011(String c030011) {
		C030011 = c030011;
	}
	public String getC030012() {
		return C030012;
	}
	public void setC030012(String c030012) {
		C030012 = c030012;
	}
	public String getC030013() {
		return C030013;
	}
	public void setC030013(String c030013) {
		C030013 = c030013;
	}
	public String getC030014() {
		return C030014;
	}
	public void setC030014(String c030014) {
		C030014 = c030014;
	}
	public String getE010002() {
		return E010002;
	}
	public void setE010002(String e010002) {
		E010002 = e010002;
	}
	public String getB030002() {
		return B030002;
	}
	public void setB030002(String b030002) {
		B030002 = b030002;
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
	private String I010005;//动作时间" />
	
	
}
