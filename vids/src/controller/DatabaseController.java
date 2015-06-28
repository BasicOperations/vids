package controller;
import java.io.IOException;
import java.sql.*;
import java.util.Iterator;
import java.util.LinkedList;

import org.w3c.dom.stylesheets.MediaList;

import com.sun.org.glassfish.gmbal.Description;

import beans.Medium;


public class DatabaseController extends Controller{
	
	private Connection connection;
	private LinkedList<Medium> mediaList;
	private String dbUser = "root";
	private String dbPassword = "qwertz";
	private String dbHost = "localhost";
	private String dbName = "vids";
	private String dbPort = "3306";
	private String driver = "com.mysql.jdbc.Driver";
	private Statement statement;
	private ResultSet resultSet;

	
	
	public DatabaseController(){
		System.out.println("Hallo Welt");
		try{
			Class driver_class = Class.forName(driver);
            Driver driver = (Driver) driver_class.newInstance();
            DriverManager.registerDriver(driver);
			
			connection = DriverManager.getConnection("jdbc:mysql://"+
													dbHost+
													":"+ 
													dbPort+
													"/"+
													dbName+
													"?"+
													"user="+
													dbUser+
													"&"+
													"password="+
													dbPassword);	
		}
		catch(InstantiationException |  IllegalAccessException | SQLException | ClassNotFoundException e){
			e.printStackTrace();
		}
		
	}
	
	public ResultSet read(String query){
		try {
			statement  = connection.createStatement();
			resultSet = statement.executeQuery(query);

		} catch (SQLException e) {

			e.printStackTrace();
			
		}
		
		return resultSet;
		
	}
	
	public void createMediaList(){
		String all = "SELECT * FROM v_media";
		String storageMedia;
		Medium medium;
		mediaList = new LinkedList<Medium>();
		try {
			ResultSet allMedia = read(all);
			while(allMedia.next()){
				medium = new Medium();
				medium.setID(allMedia.getInt("ID"));
				medium.setTitle(allMedia.getString("Title"));
				medium.setDescription(allMedia.getString("Description"));
				medium.setFsk(allMedia.getInt("FSK"));
				medium.setV_Type(allMedia.getString("V_Type"));
				mediaList.add(medium);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	public String printMediaList(){
		String list = "";
		Iterator<Medium> i = mediaList.iterator();
		while(i.hasNext()){
			Medium medium = i.next();
			list += medium.getID() +
					" " +
					medium.getTitle() +
					" " +
					medium.getDescription() + 
					" " + 
					medium.getFsk() +
					"\n";
		}
		return list;
	}
	
	public LinkedList<Medium> getMediaList(){
		return mediaList;
	}
	
	
}
