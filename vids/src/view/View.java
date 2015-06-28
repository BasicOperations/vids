package view;

import java.util.Iterator;
import java.util.LinkedList;

import beans.Medium;

public class View {
	LinkedList <Medium> mediaList;
	Filter filter;
	public View(Filter filter, LinkedList<Medium> mediaList){
		this.mediaList = mediaList;
		this.filter = filter;
	}
	
	public String printAllMedia(boolean filtered){
		Iterator<Medium> i = mediaList.iterator();
		Medium medium;
		String printString = "";
		while(i.hasNext()){
			medium = i.next();
			if(filtered){
				if(filter.check(medium)){
					printString += "<tr>" +
								  "<td>" +
								  medium.getID() +
								  "</td>" +
								  "<td>" +
								  medium.getTitle() +
								  "</td>" +
								  "<td>" +
								  medium.getFsk() +
								  "</td>" +
								  "<td>" +
								  medium.getV_Type() +
								  "</td>" +
								  "</tr>";
				}
			}
			else{
				printString += "<tr>" +
						  "<td>" +
						  medium.getID() +
						  "</td>" +
						  "<td>" +
						  medium.getTitle() +
						  "</td>" +
						  "<td>" +
						  medium.getFsk() +
						  "</td>" +
						  "<td>" +
						  medium.getV_Type() +
						  "</td>" +
						  "</tr>";
			}
		}
			
		return printString;
	}
	
}
