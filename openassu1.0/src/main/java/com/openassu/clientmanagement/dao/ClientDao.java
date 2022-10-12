package com.openassu.clientmanagement.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.openassu.clientmangement.bean.Client;

public class ClientDao {
	
	private String jdbcURL = "jdbc:mysql://localhost:3306/openassu?auseSSl=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "J@lousement1";
	private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	
	private static final String INSERT_CLIENTS_SQL = "INSERT INTO clients" + " (nomClient, prenomClient, paysClient, provinceClient, territoireClient, villeClient, communeClient, groupementClient, quartiertClient, villageClient, avenueClient, sexeClient, etatCivilClient, dateNaissanceClient, lieuNaissanceClient, typeAssuranceClient, nomAssureurClient, dateDebutClient, dateFinClient, idNationalClient, idDossierMedical) VALUES"
	+ " (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
	
	
	private static final String SELECT_CLIENTS_BY_ID = "select nomClient, prenomClient, paysClient, provinceClient, territoireClient, villeClient, communeClient, groupementClient, quartiertClient, villageClient, avenueClient, sexeClient, etatCivilClient, dateNaissanceClient, lieuNaissanceClient, typeAssuranceClient, nomAssureurClient, dateDebutClient, dateFinClient, idNationalClient, idDossierMedical from clients where idClients = ?";
	private static final String SELECT_ALL_CLIENTS = "select * from clients";
	private static final String DELETE_CLIENTS_SQL = "delete from clients where idClients = ?;";
	private static final String UPDATE_CLIENTS_SQL = "update clients set nomClient = ?, prenomClient = ?, paysClient = ?, provinceClient = ?, territoireClient = ?, villeClient = ?, communeClient = ?, groupementClient = ?, quartiertClient = ?, villageClient = ?, avenueClient = ?, sexeClient = ?, etatCivilClient = ?, dateNaissanceClient = ?,lieuNaissanceClient = ?, typeAssuranceClient = ?, nomAssureurClient = ?, dateDebutClient = ?, dateFinClient = ?, idNationalClient = ?, idDossierMedical = ?;";
	
	public ClientDao() {
		
	}
	protected Connection getConnection(){
		Connection connection = null;
		try {
			Class.forName(jdbcDriver);
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}catch (SQLException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			//TODO Auto-generated catch block
			e.printStackTrace(); 
		}
		return connection;
	}
	
	//Insert clients
	public void insertClients(Client clients) throws SQLException {
		System.out.println(INSERT_CLIENTS_SQL);
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CLIENTS_SQL)){
			preparedStatement.setString(1, clients.getNomClient());
			preparedStatement.setString(2, clients.getPrenomClient());	
			preparedStatement.setString(3, clients.getPaysClient());
			preparedStatement.setString(4, clients.getProvinceClient());
			preparedStatement.setString(5, clients.getTerritoireClient());
			preparedStatement.setString(6, clients.getVilleClient());
			preparedStatement.setString(7, clients.getCommuneClient());
			preparedStatement.setString(8, clients.getGroupementClient());
			preparedStatement.setString(9, clients.getQuartiertClient());
			preparedStatement.setString(10, clients.getVillageClient());
			preparedStatement.setString(11, clients.getAvenueClient());
			preparedStatement.setString(12, clients.getSexeClient());
			preparedStatement.setString(13, clients.getEtatCivilClient());
			preparedStatement.setString(14, clients.getDateNaissanceClient());
			preparedStatement.setString(15, clients.getLieuNaissanceClient());
			preparedStatement.setString(16, clients.getTypeAssuranceClient());
			preparedStatement.setString(17, clients.getNomAssureurClient());
			preparedStatement.setString(18, clients.getDateDebutClient());
			preparedStatement.setString(19, clients.getDateFinClient());
			preparedStatement.setInt(20, clients.getIdNationalClient());
			preparedStatement.setInt(21, clients.getIdDossierMedical());
			
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		}catch (SQLException e) {
			printSQLException(e);
			}
		}
	
		
		
	//select clients by id
	public Client selectClient(int idClient) {
		Client client = null;
		
		//Step 1: Establishing a Connection 
		try (Connection connection = getConnection();
		
				//Step 2 : Create a statement using connection object
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CLIENTS_BY_ID);) {
	preparedStatement.setInt(1,  idClient);
	System.out.println(preparedStatement);
	// Step 3 : Execute the query or update query
	ResultSet rs = preparedStatement.executeQuery();
	//Step 4 : Process the Result object.
	while (rs.next()) {
		String nomClient = rs.getString("nomClient");
		String prenomClient = rs.getString("prenomClient");
		String paysClient = rs.getString("paysClient");
		String provinceClient = rs.getString("provinceClient");
		String territoireClient = rs.getString("territoireClient");
		String villeClient = rs.getString("villeClient");
		String communeClient = rs.getString("communeClient");
		String groupementClient = rs.getString("groupementClient");
		String quartiertClient = rs.getString("quartiertClient");
		String villageClient = rs.getString("villageClient");
		String avenueClient = rs.getString("avenueClient");
		String sexeClient = rs.getString("sexeClient");
		String etatCivilClient = rs.getString("etatCivilClient");
		String dateNaissanceClient = rs.getString("dateNaissanceClient");
		String lieuNaissanceClient = rs.getString("lieuNaissanceClient");
		String typeAssuranceClient = rs.getString("typeAssuranceClient");
		String nomAssureurClient = rs.getString("nomAssureurClient");
		String dateDebutClient = rs.getString("dateDebutClient");
		String dateFinClient = rs.getString("dateFinClient");
		int idNationalClient = rs.getInt("idNationalClient");
		int idDossierMedical = rs.getInt("idDossierMedical");
		
		
		client = new Client(nomClient, prenomClient, paysClient, provinceClient, territoireClient, villeClient, communeClient, groupementClient, quartiertClient, villageClient, avenueClient, sexeClient, etatCivilClient, dateNaissanceClient, lieuNaissanceClient, typeAssuranceClient, nomAssureurClient, dateDebutClient, dateFinClient, idNationalClient, idDossierMedical);
		
	}
		}catch (SQLException e) {
			printSQLException(e);
		}
		return client;
		
	}
	//select all clients
	public List<Client> selectAllClients(){
		
		// using try with resources to avoid closing resources (boiler plate code)
		List<Client> clients = new ArrayList<>();
	
		//step 1 . Establishing a connexion
		try (Connection connection = getConnection();
				
	//Step2 : Create a statement using connection object
		PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CLIENTS);){
			System.out.println(preparedStatement);
		
			//step 3 . Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();
			
			//step 4 . Process the ResultSet object.
			while (rs.next()) {
				int idClients = rs.getInt("idClients");
				String nomClient = rs.getString("nomClient");
				String prenomClient = rs.getString("prenomClient");
				String paysClient = rs.getString("paysClient");
				String provinceClient = rs.getString("provinceClient");
				String territoireClient = rs.getString("territoireClient");
				String villeClient = rs.getString("villeClient");
				String communeClient = rs.getString("communeClient");
				String groupementClient = rs.getString("groupementClient");
				String quartiertClient = rs.getString("quartiertClient");
				String villageClient = rs.getString("villageClient");
				String avenueClient = rs.getString("avenueClient");
				String sexeClient = rs.getString("sexeClient");
				String etatCivilClient = rs.getString("etatCivilClient");
				String dateNaissanceClient = rs.getString("dateNaissanceClient");
				String lieuNaissanceClient = rs.getString("lieuNaissanceClient");
				String typeAssuranceClient = rs.getString("typeAssuranceClient");
				String nomAssureurClient = rs.getString("nomAssureurClient");
				
				String dateDebutClient = rs.getString("dateDebutClient");
				
				String dateFinClient = rs.getString("dateFinClient");
				int idNationalClient = rs.getInt("idNationalClient");
				int idDossierMedical = rs.getInt("idDossierMedical");
				
				clients.add(new Client(idClients, nomClient, prenomClient, paysClient, provinceClient, territoireClient, villeClient, communeClient, groupementClient, quartiertClient, villageClient, avenueClient, sexeClient, etatCivilClient, dateNaissanceClient, lieuNaissanceClient, typeAssuranceClient, nomAssureurClient, dateDebutClient, dateFinClient, idNationalClient, idDossierMedical));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return clients;
		
	}
	
	//update clients
	public boolean updateClient(Client client) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
			PreparedStatement statement = connection.prepareStatement(UPDATE_CLIENTS_SQL);){
		System.out.println("updated Client: "+statement);
		statement.setInt(1, client.getIdClients());
		statement.setString(2, client.getNomClient());
		statement.setString(3, client.getPrenomClient());
		statement.setString(4, client.getPaysClient());
		statement.setString(5, client.getProvinceClient());
		statement.setString(6, client.getTerritoireClient());
		statement.setString(7, client.getVilleClient());
		statement.setString(8, client.getCommuneClient());
		statement.setString(9, client.getGroupementClient());
		statement.setString(10, client.getQuartiertClient());
		statement.setString(11, client.getVillageClient());
		statement.setString(12, client.getAvenueClient());
		statement.setString(13, client.getSexeClient());
		statement.setString(14, client.getEtatCivilClient());
		statement.setString(15, client.getDateNaissanceClient());
		statement.setString(16, client.getLieuNaissanceClient());
		statement.setString(17, client.getTypeAssuranceClient());
		statement.setString(18, client.getNomAssureurClient());
		statement.setString(19, client.getDateDebutClient());
		statement.setString(20, client.getDateFinClient());
		statement.setInt(21, client.getIdNationalClient());
		statement.setInt(22, client.getIdDossierMedical());
		
		
		rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}
	
	//delete clients
	public boolean deleteClient (int idClients) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_CLIENTS_SQL);) {
			statement.setInt(1, idClients);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}
	
	
	private void printSQLException(SQLException ex) {
		// TODO Auto-generated method stub
		for (Throwable e : ex) {
			if (e instanceof SQLException);
			e.printStackTrace(System.err);
			System.err.println("SQLState : " + ((SQLException) e).getSQLState());
			System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
			System.err.println("Message: " + e.getMessage());
			Throwable t = ex.getCause();
			while (t !=null) {
				System.out.println("Cause: " + t);
				t = t.getCause();
			}
		}
		
	}
	
	
	
}
