package beanToMessage;
/****
 * 第三方支付账户信息
 * @author pdjt
 *
 */
public class PayaccountInfoMessage {
	private String B040002; //帐号" />
	private String B040003; //用户内部ID" />
	private String B040010; //用户支付/收款用帐号类型字典码 01 支付宝 02 财付通 04 PayPal 05 银联在线 06 微信支付 07 快钱支付 08 钱宝支付 09 百度钱包 99 其他" />
	private String B040011; //用户支付/收款用帐号" />
	private String H010003; //动作类型，字典码 1 创建，2 删除，3 修改/更新" />
	private String I010005; //动作时间（绝对秒数）" />
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
	public String getB040010() {
		return B040010;
	}
	public void setB040010(String b040010) {
		B040010 = b040010;
	}
	public String getB040011() {
		return B040011;
	}
	public void setB040011(String b040011) {
		B040011 = b040011;
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
