package beans;

public class Series {
	
	private int totalLength;
	private int episodeLength;
	
	public Series(){
		
	}

	public int getTotalLength(){
		return totalLength;
	}
	
	public void setTotalLength(int totalLength){
		this.totalLength = totalLength;
	}
	
	public int getEpisodeLength(){
		return episodeLength;
	}
	
	public void setEpisodeLength(int episodeLength){
		this.episodeLength = episodeLength;
	}

}
