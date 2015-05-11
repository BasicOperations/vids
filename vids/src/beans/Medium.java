package beans;

import java.util.*;

public class Medium {
	private int id;
	private String title;
	private String description;
	private byte[] image;
	private int fsk;
	private ArrayList<StorageMedium> storageMediaList;
	
	public Medium(){
		
	}
		
	public int getID(){
		return id;
	}
	
	public void setID(int id){
		this.id = id;
	}
	
	public String getTitle(){
		return title;
	}
	
	public void setTitle(String title){
		this.title = title;
	}
	
	public String getDescription(){
		return description;
	}
	
	public void setDescription(String description){
		this.description = description;
	}
	
	public byte[] getImage(){
		return image;
	}
	
	public void setImage(byte[] image){
		this.image = image;
	}
	
	public int getFsk(){
		return fsk;
	}
	
	public void setFsk(int fsk){
		this.fsk = fsk;
	}
	
	public ArrayList getStorageMediaList(){
		return storageMediaList;
	}
	
	public void setStorageMediaList(StorageMedium storageMedium){
		this.storageMediaList = new ArrayList<StorageMedium>();
		this.storageMediaList.add(storageMedium);
	}
	
	public void addStorageMedium(StorageMedium storageMedium){
		this.storageMediaList.add(storageMedium);
	}
}
