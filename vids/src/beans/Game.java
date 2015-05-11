package beans;

public class Game extends Medium {
	
	private String console;
	private int player;
	
	public Game(){
		
	}

	public String getConsole(){
		return console;
	}
	
	public void setConsole(String console){
		this.console = console;
	}
	
	public int getPlayer(){
		return player;
	}
	
	public void setPlayer(int player){
		this.player = player;
	}
	
}
