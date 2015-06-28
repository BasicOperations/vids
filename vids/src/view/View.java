package view;

import java.util.Iterator;
import java.util.LinkedList;

import beans.Medium;

public class View {
	LinkedList <Medium> mediaList;
	public View(Filter filter, LinkedList<Medium> mediaList){
		this.mediaList = mediaList;
	}
	
	public String printAllMedia(){
		Iterator<Medium> i = mediaList.iterator();
		Medium medium;
		String printString = "";
		while(i.hasNext()){
			medium = i.next();
			printString += "<div class=\"Medium\">" +
						  medium.getID() +
						  " " +
						  medium.getTitle() +
						  " " +
						  medium.getFsk() +
						  " " +
						  medium.getV_Type() +
						  
						  "</div class=\"Medium\">";	
		}
		return printString;
	}
	
}
