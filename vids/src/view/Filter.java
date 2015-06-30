package view;

import beans.Medium;

public class Filter {
	

	private String title;
	private String v_Type;
	private int FSK;
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getV_Type() {
		return v_Type;
	}

	public void setV_Type(String v_Type) {
		this.v_Type = v_Type;
	}

	public int getFSK() {
		return FSK;
	}

	public void setFSK(int fSK) {
		FSK = fSK;
	}

	
	public Filter(){
		title = "";
		v_Type = "all";
		FSK = 0;
	}
	
	public boolean check(Medium medium){
		
		//int[] test = new int[3];
		
		//test[0] = test[1] = test[2] = 1;
		if(!medium.getTitle().equals(title)){
			if(!title.equals("")){
				return false;
			}
				
		}
		if(!medium.getV_Type().equals(v_Type)){
			if(!v_Type.equals("all")){
				return false;
			}
				
		}
		if(medium.getFsk() != FSK){
			if(FSK != 0){
				return false;
			}
				
		}

		return true;
	}
	
	
}
