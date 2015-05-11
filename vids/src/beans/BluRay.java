package beans;

public class BluRay implements StorageMedium {
	
	private int id;
	private String title;
	private Medium medium;

	public BluRay(){
		
	}
	
	public String getTitle(){
		return title;
	}
	
	public void setTitle(String title){
		this.title = title;
	}

	public int getID() {
		return id;
	}
	
	public void setID(int id){
		this.id = id;
	}

	public Medium getMedium() {
		return medium;
	}

	public void setMedia(Medium medium) {
		this.medium = medium;
	}

}
