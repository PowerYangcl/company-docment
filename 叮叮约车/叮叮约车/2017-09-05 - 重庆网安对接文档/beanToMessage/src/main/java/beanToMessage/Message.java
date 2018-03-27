package beanToMessage;

import com.thoughtworks.xstream.annotations.XStreamAlias;

@XStreamAlias("MESSAGE")
public class Message {

	@XStreamAlias("DATASET")
	private DataSet dataSet1;
	
	@XStreamAlias("DATASET")
	private DataSet dataSet2;

	public DataSet getDataSet1() {
		return dataSet1;
	}

	public void setDataSet1(DataSet dataSet1) {
		this.dataSet1 = dataSet1;
	}

	public DataSet getDataSet2() {
		return dataSet2;
	}

	public void setDataSet2(DataSet dataSet2) {
		this.dataSet2 = dataSet2;
	}
}
