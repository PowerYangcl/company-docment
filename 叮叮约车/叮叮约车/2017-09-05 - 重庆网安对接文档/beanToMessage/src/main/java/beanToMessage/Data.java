package beanToMessage;

import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;

@XStreamAlias("DATA")
public class Data {

	@XStreamAlias("")
	private List<Item> Item;

	public List<Item> getItem() {
		return Item;
	}

	public void setItem(List<Item> item) {
		Item = item;
	}
	
	
}
