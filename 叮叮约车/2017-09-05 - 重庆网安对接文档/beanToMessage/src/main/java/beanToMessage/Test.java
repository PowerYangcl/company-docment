package beanToMessage;

import java.io.InputStream;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
public class Test {

	public static void main(String[] args) {
		
        String resource = "conf.xml";
        InputStream is = Test.class.getClassLoader().getResourceAsStream(resource);
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
        SqlSession session = sessionFactory.openSession();
        
        //用户注册信息 -- 乘客 
        String statement1 = "datamapper.getData1"; 
        List<Object> result = session.selectList(statement1);
        String fileName = BeanToMessage.toXmlMessage(result, "ACCOUNT");
        toZip(fileName);
        
        //订单信息
        String statement2 = "datamapper.getData2";
        List<Object> result2 = session.selectList(statement2);
        fileName = BeanToMessage.toXmlMessage(result2, "VEHICLEBOOK");
        toZip(fileName);
        
        //车辆信息
		String statement3 = "datamapper.getData3";
		List<Object> result3 = session.selectList(statement3);
		fileName = BeanToMessage.toXmlMessage(result3, "VEHICLEINFO");
		toZip(fileName);
		
        //轨迹信息 
		String statement4 = "datamapper.getData4";
		List<Object> result4 = session.selectList(statement4);
		fileName = BeanToMessage.toXmlMessage(result4, "VEHICLETRACK");
		toZip(fileName);
        
        //车辆司机关联信息
        String statement5 = "datamapper.getData5";
		List<Object> result5 = session.selectList(statement5);
		fileName = BeanToMessage.toXmlMessage(result5, "USERVEHICLERELATEINFO");
		toZip(fileName);
        
		//支付信息 
		String statement6 = "datamapper.getData6";
		List<Object> result6 = session.selectList(statement6);
		fileName = BeanToMessage.toXmlMessage(result6, "PAYACCOUNTINFO");
		toZip(fileName);
        
        //登录日志
        String statement7 = "datamapper.getData7";
		List<Object> result7 = session.selectList(statement7);
		fileName = BeanToMessage.toXmlMessage(result7, "LOGIN");
		toZip(fileName);
	}
	
	private static void toZip(String fileName){
		ZipUtil zipUtil = new ZipUtil("E://test2//"+fileName+".zip");
		zipUtil.compress("E://data1//"+fileName+".xml");
	}
}
