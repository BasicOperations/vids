package controller;

import java.util.*;

import beans.*;

public class MediaController extends Controller{
	
	private DatabaseController databaseController;
	private LinkedList<Medium> mediaList;
	
	public MediaController(){
		
		this.databaseController = new DatabaseController();
		databaseController.createMediaList();
		mediaList = databaseController.getMediaList();
		System.out.println(databaseController.printMediaList());
	}
	
	public LinkedList<Medium> getMediaList(){ //used by ViewController
		return mediaList;
	}
}
