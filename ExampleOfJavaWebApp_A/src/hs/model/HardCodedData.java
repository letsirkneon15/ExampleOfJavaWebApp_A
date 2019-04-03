package hs.model;

import java.util.ArrayList;

public class HardCodedData {

	public ArrayList<String[]> getFirmCode(){
		
		ArrayList<String[]> firmArr = new ArrayList<String[]>();
		
		firmArr.add(new String[]{"20", "MES"});
		firmArr.add(new String[]{"21", "MME"});
		firmArr.add(new String[]{"24", "TMT"});
		firmArr.add(new String[]{"25", "MEP"});
		firmArr.add(new String[]{"26", "PMM"});
		
		return firmArr;

	}
}
