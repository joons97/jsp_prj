package day1018;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class DataDAO {
	public List<DataVO> selectData(){
		List<DataVO> list=new ArrayList<DataVO>();
		//드라이브, 커넥션,,,,
		
		if(new Random().nextBoolean()) {
			list.add(new DataVO("img5.jpg", "이인혁",
					"모든일에 최선을 다하는 조원 임다.",1));		
			list.add(new DataVO("img2.jpg", "페페",
					"이게 뭐에요",2));		
			list.add(new DataVO("bar.png", "침흘리는 페페",
					"침흘림",3));		
			list.add(new DataVO("img4.jpg", "햄스터",
					"방가방가 햄토리",4));		
		}//end if
		
		return list;
	}//selectData
}//class
