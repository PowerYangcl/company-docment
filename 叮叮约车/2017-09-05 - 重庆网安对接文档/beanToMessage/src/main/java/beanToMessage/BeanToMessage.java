package beanToMessage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.mysql.jdbc.util.Base64Decoder;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.core.util.Base64Encoder;

public class BeanToMessage {

	private static int index = 1000;
	@SuppressWarnings({ "static-access", "rawtypes" })
	public static String toXmlMessage(List<Object> objList,String dateType){
		String fileName = "";
		try {
			Message message = new Message();
			DataSet dataSet1 = new DataSet();
			List<Data> listdata1 = new ArrayList<Data>();
			
			Item msgItem1 = new Item();
			msgItem1.setKey(MessageCode.ITEM1_KEY);
			msgItem1.setVal(MessageCode.ITEM1_VAL);
			//msgItem1.setRmk(MessageCode.ITEM1_RMK);
			Item msgItem2 = new Item();
			msgItem2.setKey(MessageCode.ITEM2_KEY);
			String No = getNo();
			msgItem2.setVal(No);
			//msgItem2.setRmk(MessageCode.ITEM2_RMK);
			Item msgItem3 = new Item();
			msgItem3.setKey(MessageCode.ITEM3_KEY);
			msgItem3.setVal(dateType);
			//msgItem3.setRmk(MessageCode.ITEM3_RMK);
			Item msgItem4 = new Item();
			msgItem4.setKey(MessageCode.ITEM4_KEY);
			msgItem4.setVal(MessageCode.MSGTYPE3);
			//msgItem4.setRmk(MessageCode.ITEM4_RMK);
			List<Item> list1 = new ArrayList<Item>();
			list1.add(msgItem1);
			list1.add(msgItem2);
			list1.add(msgItem3);
			list1.add(msgItem4);
			Data data1 = new Data();
			data1.setItem(list1);
			
			dataSet1.setName(MessageCode.DATASET1NAME);
			//dataSet1.setRmk(MessageCode.DATASET1RMK);
			
			listdata1.add(data1);
			dataSet1.setData(listdata1);
			
			DataSet dataSet2 = new DataSet();
			dataSet2.setName(MessageCode.DATASET2NAME);
			//dataSet2.setRmk(MessageCode.DATASET2RMK);
			List<Data> listdata2 = new ArrayList<Data>();
			
			for(Object obj : objList){
				List<Item> dataItem = new ArrayList<Item>();
				Class objClass = obj.getClass();
				Field[] fs = objClass.getDeclaredFields();
				
				for(int i=0;i<fs.length;i++){
					Field f = fs[i];
					f.setAccessible(fs, true);
					try {
						Item item = new Item();
						String key = f.getName();
//						String key = "";
//						MsgKey msgKey = f.getAnnotation(MsgKey.class);
//						if(msgKey==null){
//							continue;
//						}
//						key = msgKey.value();
						Object val = f.get(obj);
						if(null==val || "".equals(val.toString())){
							continue;
						}
						if(key.equals("F020001") || key.equals("F020004")){ // ip 地址转换
							val = ip2int(val.toString());
						}
						if(key.equals("H090001") && "0".equals(val)){
							continue;
						}
						if(datafmt(val.toString())){
							val = new Base64Encoder().encode(val.toString().getBytes());
							item.setFmt("base64");
						}
						//用户昵称
						if(key.equals("B040004")){
							val = new Base64Encoder().encode(val.toString().getBytes());
							item.setFmt("base64");
						}
						//用户登录密码
						if(key.equals("B040005")){
							val = new Base64Encoder().encode(val.toString().getBytes());
							item.setFmt("base64");
						}
						//真实姓名
						if(key.equals("B010001")){
							val = new Base64Encoder().encode(val.toString().getBytes());
							item.setFmt("base64");
						}
						//联系地址
						if(key.equals("B020008")){
							val = new Base64Encoder().encode(val.toString().getBytes());
							item.setFmt("base64");
						}
						//居住地
						if(key.equals("B030011")){
							val = new Base64Encoder().encode(val.toString().getBytes());
							item.setFmt("base64");
						}
						//籍贯
						if(key.equals("B010026")){
							val = new Base64Encoder().encode(val.toString().getBytes());
							item.setFmt("base64");
						}
						//职业名称
						if(key.equals("B030024")){
							val = new Base64Encoder().encode(val.toString().getBytes());
							item.setFmt("base64");
						}
						
						item.setKey(key);
						item.setVal(val.toString());
						if(!"H010003".equals(key)){
							//item.setRmk(MessageKeyRmk.getKeyRmk(key)); //不再添加rmk属性
						}
						dataItem.add(item);
					} catch (IllegalArgumentException e) {
						e.printStackTrace();
					} catch (IllegalAccessException e) {
						e.printStackTrace();
					}
				}
				Data data = new Data();
				data.setItem(dataItem);
				listdata2.add(data);
			}
			
			dataSet2.setData(listdata2);
			message.setDataSet1(dataSet1); 
			message.setDataSet2(dataSet2);
			XStream xstream = new XStream();
			xstream.autodetectAnnotations(true);
			String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?> \n";
			xml += xstream.toXML(message).replaceAll("<>", "").replaceAll("</>", "");
			
			System.out.println(xml);
			try {
//				fileName = MessageCode.ITEM1_VAL+"_"+dateType+"_"+MessageCode.MSGTYPE3+"_"+No+"_"+0+"_"+getRandom();
				fileName = MessageCode.ITEM1_VAL+"_"+dateType+"_"+MessageCode.MSGTYPE3+"_"+No+"_"+0+"_"+index;
				String path = "E://data1//"+fileName+".xml";
				File file = new File(path);
				if (!file.exists()) {
					file.createNewFile();
				}
				FileOutputStream out = new FileOutputStream(file, false); 
				out.write(xml.getBytes("utf-8")); 
				out.close(); 
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return fileName;
	}
	
	private static String getNo(){
		//属地行政区划 + 13位时间串（绝对秒数+微秒数） + 自定索引码（0001开始，步长1）。
		++index;
		//return "500000"+(new Date().getTime())+index;
		return "500000"+(new Date().getTime());
	}
	
	private static String getRandom(){
		return UUID.randomUUID().toString();
	}
	
	/** 
	 * IP转成整型 
	 * @param ip 
	 * @return 
	 */  
	public static Long ip2int(String ip){  
	    Long num = 0L;  
	    if (ip == null){  
	        return num;  
	    }  
	    try{  
	        ip = ip.replaceAll("[^0-9\\.]", ""); //去除字符串前的空字符  
	        String[] ips = ip.split("\\.");  
	        if (ips.length == 4){  
	            num = Long.parseLong(ips[0], 10) * 256L * 256L * 256L + Long.parseLong(ips[1], 10) * 256L * 256L + Long.parseLong(ips[2], 10) * 256L + Long.parseLong(ips[3], 10);  
	            num = num >>> 0;  
	        }  
	    }catch(NullPointerException ex){  
	        System.out.println(ip);  
	    }  
	    return num;  
	} 
	
	public static boolean datafmt(String val){
		String str = "<>\"/'&";
		String[] strs = str.split("");
		
		for(String s : strs){
			if(val.indexOf(s)>0){
				return true;
			}
		}
		return false;
	}
	
	
	public static void main(String[] args) {
		System.out.println(ip2int("192.168.2.6"));
	}
}
