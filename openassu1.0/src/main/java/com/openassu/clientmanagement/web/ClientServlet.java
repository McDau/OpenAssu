package com.openassu.clientmanagement.web;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.openassu.clientmanagement.dao.ClientDao;
import com.openassu.clientmangement.bean.Client;

/**
 * Servlet implementation class ClientServlet
 */

public class ClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private ClientDao clientDao;
    
   

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public ClientServlet () {
		this.clientDao= new ClientDao();	  
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();
		switch(action) {
		case "/new":
			showNewForm(request, response);
			break ;
	
		case "/insert":
			try {
				insertClients(request, response);
			} catch (ServletException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		break ;
		
		case "/delete":
			try {
				deleteClient (request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		break ;
		
		case "/edit":
			try {
				showEditForm (request, response);
			} catch (SQLException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		break ;
	
	
		case "/update":
			try {
				updateClient (request, response);
			} catch (SQLException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		break ;
	
		default:
			//handle list
			try {
				listClients(request, response);
			} catch (SQLException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		}
		}
		
		

		private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ajoutclient.jsp");
			dispatcher.forward(request, response);
		}
		//insert client
		private void insertClients(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		String nomClient = request.getParameter("nomClient");
		String prenomClient = request.getParameter("prenomClient");
		String paysClient = request.getParameter("paysClient");
		String provinceClient = request.getParameter("provinceClient");
		String territoireClient = request.getParameter("territoireClient");
		String villeClient = request.getParameter("villeClient");
		String communeClient = request.getParameter("communeClient");
		String groupementClient = request.getParameter("groupementClient");
		String quartiertClient = request.getParameter("quartiertClient");
		String villageClient = request.getParameter("villageClient");
		String avenueClient = request.getParameter("avenueClient");
		String sexeClient = request.getParameter("sexeClient");
		String etatCivilClient = request.getParameter("etatCivilClient");
		String dateNaissanceClient = request.getParameter("dateNaissanceClient")	;
		
		String lieuNaissaceClient = request.getParameter("lieuNaissaceClient");
		String typeAssuranceClient = request.getParameter("typeAssuranceClient");
		String nomAssureurClient = request.getParameter("nomAssureurClient");
		
		String dateDebutClient = request.getParameter("dateDebutClient");
		
		String dateFinClient = request.getParameter("dateFinClient");
		
		int idNationalClient = Integer.parseInt(request.getParameter("idNationalClient"));
		int idDossierMedical = Integer.parseInt(request.getParameter("idDossierMedical"));
		Client newClient = new Client (nomClient, prenomClient, paysClient, provinceClient, territoireClient, villeClient, communeClient, groupementClient, quartiertClient, villageClient, avenueClient, sexeClient, etatCivilClient, dateNaissanceClient, lieuNaissaceClient, typeAssuranceClient, nomAssureurClient, dateDebutClient, dateFinClient, idNationalClient, idDossierMedical);
		
			clientDao.insertClients(newClient);
		response.sendRedirect("list");
		}	
		//delete client
		private void deleteClient(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
			int idClients = Integer.parseInt(request.getParameter("idClients"));
			clientDao.deleteClient(idClients);
			response.sendRedirect("list");
			
		}
		
		//edit client
		private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
			int idClients = Integer.parseInt(request.getParameter("idClients"));
			Client existingClient = clientDao.selectClient(idClients);
			RequestDispatcher dispatcher = request.getRequestDispatcher("ajoutclient.jsp");
			request.setAttribute("client", existingClient);
			try {
				dispatcher.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}	
	//update client
		private void updateClient(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
			Integer idClients = Integer.parseInt(request.getParameter("idClients"));
			String nomClient = request.getParameter("nomClient");
			String prenomClient = request.getParameter("prenomClient");
			String paysClient = request.getParameter("paysClient");
			String provinceClient = request.getParameter("provinceClient");
			String territoireClient = request.getParameter("territoireClient");
			String villeClient = request.getParameter("villeClient");
			String communeClient = request.getParameter("communeClient");
			String groupementClient = request.getParameter("groupementClient");
			String quartiertClient = request.getParameter("quartiertClient");
			String villageClient = request.getParameter("villageClient");
			String avenueClient = request.getParameter("avenueClient");
			String sexeClient = request.getParameter("sexeClient");
			String etatCivilClient = request.getParameter("etatCivilClient");
			String dateNaissanceClient = request.getParameter("dateNaissanceClient");
			
			String lieuNaissaceClient = request.getParameter("lieuNaissaceClient");
			String typeAssuranceClient = request.getParameter("typeAssuranceClient");
			String nomAssureurClient = request.getParameter("nomAssureurClient");
			
			String dateDebutClient = request.getParameter("dateDebutClient");
			String dateFinClient = request.getParameter("dateFinClient");
			
			Integer idNationalClient = Integer.parseInt(request.getParameter("idNationalClient"));
			Integer idDossierMedical = Integer.parseInt(request.getParameter("idDossierMedical"));
			
			Client client = new Client(idClients, nomClient, prenomClient, paysClient, provinceClient, territoireClient, villeClient, communeClient, groupementClient, quartiertClient, villageClient, avenueClient, sexeClient, etatCivilClient, dateNaissanceClient, lieuNaissaceClient, typeAssuranceClient, nomAssureurClient, dateDebutClient, dateFinClient, idNationalClient, idDossierMedical);
			
				clientDao.updateClient(client);
				response.sendRedirect("list");
		}
		
		//default
		private void listClients(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
			try {
				List<Client> listClients = clientDao.selectAllClients();
				request.setAttribute("listClients", listClients);
				RequestDispatcher dispatcher = request.getRequestDispatcher("client-list.jsp");
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}	
		}
		
}


