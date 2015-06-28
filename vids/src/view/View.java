package view;

import java.util.LinkedList;
import beans.Medium;

public class View {
	LinkedList <Medium> filteredList;
	public View(Filter filter, LinkedList<Medium> mediaList){
		filteredList = mediaList;
	}
	
	public String printMedium(){
		
		
		return filteredList.get(1).getTitle();
	}
	
}
