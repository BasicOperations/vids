package controller;

import java.util.LinkedList;

import view.*;
import beans.Medium;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ViewController
 */
@WebServlet("/ViewController")
public class ViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MediaController mediacontroller;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("Name");
		String v_Type = request.getParameter("Typ");
		int fsk = 0;
		if(request.getParameter("FSK") != null)
			fsk = Integer.parseInt(request.getParameter("FSK"));
		//String title = request.getParameter("Name");
		LinkedList <Medium> mediaList = mediacontroller.getMediaList(); //get MediaList from MediaController
		//get Filter from Request
		Filter filter = new Filter();
		if(title != null){
			filter.setTitle(title);
		}
		filter.setV_Type(v_Type);
		filter.setFSK(fsk);
		
		System.out.println(title + " " + v_Type + " " + fsk );
		

		View v=new View(filter, mediaList); //View Class filters the list
		request.setAttribute("View", v); //Object with filteredList in Request
		RequestDispatcher view;
		view = request.getRequestDispatcher("result.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	public void init() throws ServletException {
		this.mediacontroller = new MediaController();
	}

}
