package com.openassu.clientmangement.bean;


import java.sql.Date;

public class Client {
	
	private Integer idClients;
	private String NomClient;
	private String prenomClient;
	private String paysClient;
	private String provinceClient;
	private String territoireClient;
	private String villeClient;
	private String communeClient;
	private String groupementClient;
	private String quartiertClient;
	private String villageClient;
	private String avenueClient;
	private String sexeClient;
	private String etatCivilClient;
	private String dateNaissanceClient;
	private String lieuNaissanceClient;
	private String typeAssuranceClient;
	private String nomAssureurClient;
	private String dateDebutClient;
	private String dateFinClient;
	private int idNationalClient ;
	private int idDossierMedical;
	
	
		
	
	
	
	public Client(String nomClient, String prenomClient, String paysClient, String provinceClient,
			String territoireClient, String villeClient, String communeClient, String groupementClient,
			String quartiertClient, String villageClient, String avenueClient, String sexeClient, 
			String etatCivilClient, String dateNaissanceClient, String lieuNaissanceClient, String typeAssuranceClient,
			String nomAssureurClient, String dateDebutClient, String dateFinClient, Integer idNationalClient, Integer idDossierMedical) {
		super();
		this.NomClient = nomClient;
		this.prenomClient = prenomClient;
		this.paysClient = paysClient;
		this.provinceClient = provinceClient;
		this.territoireClient = territoireClient;
		this.villeClient = villeClient;
		this.communeClient = communeClient;
		this.groupementClient = groupementClient;
		this.quartiertClient = quartiertClient;
		this.villageClient = villageClient;
		this.avenueClient = avenueClient;
		this.sexeClient = sexeClient;
		this.etatCivilClient = etatCivilClient;
		this.dateNaissanceClient = dateNaissanceClient;
		this.lieuNaissanceClient = lieuNaissanceClient;
		this.typeAssuranceClient = typeAssuranceClient;
		this.nomAssureurClient = nomAssureurClient;
		this.dateDebutClient = dateDebutClient;
		this.dateFinClient = dateFinClient;
		this.idNationalClient = idNationalClient;
		this.idDossierMedical = idDossierMedical;
	}
	public Client(Integer idClients, String nomClient, String prenomClient, String paysClient, String provinceClient,
			String territoireClient, String villeClient, String communeClient, String groupementClient,
			String quartiertClient, String villageClient, String avenueClient, String sexeClient, 
			String etatCivilClient, String dateNaissanceClient, String lieuNaissanceClient, String typeAssuranceClient,
			String nomAssureurClient, String dateDebutClient, String dateFinClient, Integer idNationalClient, Integer idDossierMedical) {
		super();
		this.idClients = idClients;
		this.prenomClient = prenomClient;
		this.paysClient = paysClient;
		this.provinceClient = provinceClient;
		this.territoireClient = territoireClient;
		this.villeClient = villeClient;
		this.communeClient = communeClient;
		this.groupementClient = groupementClient;
		this.quartiertClient = quartiertClient;
		this.villageClient = villageClient;
		this.avenueClient = avenueClient;
		this.sexeClient = sexeClient;
		this.etatCivilClient = etatCivilClient;
		this.dateNaissanceClient = dateNaissanceClient;
		this.lieuNaissanceClient = lieuNaissanceClient;
		this.typeAssuranceClient = typeAssuranceClient;
		this.nomAssureurClient = nomAssureurClient;
		this.dateDebutClient = dateDebutClient;
		this.dateFinClient = dateFinClient;
		this.idNationalClient = idNationalClient;
		this.idDossierMedical = idDossierMedical;
		
	}
	
	public Integer getIdClients() {
		return idClients;
	}
	public void setIdClients(Integer idClients) {
		this.idClients = idClients;
	}
	public String getNomClient() {
		return NomClient;
	}
	public void setNomClient(String nomClient) {
		this.NomClient = nomClient;
	}
	public String getPrenomClient() {
		return prenomClient;
	}
	public void setPrenomClient(String prenomClient) {
		this.prenomClient = prenomClient;
	}
	public String getPaysClient() {
		return paysClient;
	}
	public void setPaysClient(String paysClient) {
		this.paysClient = paysClient;
	}
	public String getProvinceClient() {
		return provinceClient;
	}
	public void setProvinceClient(String provinceClient) {
		this.provinceClient = provinceClient;
	}
	public String getTerritoireClient() {
		return territoireClient;
	}
	public void setTerritoireClient(String territoireClient) {
		this.territoireClient = territoireClient;
	}
	public String getVilleClient() {
		return villeClient;
	}
	public void setVilleClient(String villeClient) {
		this.villeClient = villeClient;
	}
	public String getCommuneClient() {
		return communeClient;
	}
	public void setCommuneClient(String communeClient) {
		this.communeClient = communeClient;
	}
	public String getGroupementClient() {
		return groupementClient;
	}
	public void setGroupementClient(String groupementClient) {
		this.groupementClient = groupementClient;
	}
	public String getQuartiertClient() {
		return quartiertClient;
	}
	public void setQuartiertClient(String quartiertClient) {
		this.quartiertClient = quartiertClient;
	}
	public String getVillageClient() {
		return villageClient;
	}
	public void setVillageClient(String villageClient) {
		this.villageClient = villageClient;
	}
	public String getAvenueClient() {
		return avenueClient;
	}
	public void setAvenueClient(String avenueClient) {
		this.avenueClient = avenueClient;
	}
	public String getSexeClient() {
		return sexeClient;
	}
	public void setSexeClient(String sexeClient) {
		this.sexeClient = sexeClient;
	}
	public String getEtatCivilClient() {
		// 
		return etatCivilClient;
	}
	public void setEtatCivilClient (String etatCivilClient) {
		this.etatCivilClient = etatCivilClient;
	}
	public String getDateNaissanceClient() {
		return dateNaissanceClient;
	}
	public void setDateNaissanceClient(String dateNaissanceClient) {
		this.dateNaissanceClient = dateNaissanceClient;
	}
	public String getLieuNaissanceClient() {
		return lieuNaissanceClient;
	}
	public void setLieuNaissanceClient(String lieuNaissanceClient) {
		this.lieuNaissanceClient = lieuNaissanceClient;
	}
	public String getTypeAssuranceClient() {
		return typeAssuranceClient;
	}
	public void setTypeAssuranceClient(String typeAssuranceClient) {
		this.typeAssuranceClient = typeAssuranceClient;
	}
	public String getNomAssureurClient() {
		return nomAssureurClient;
	}
	public void setNomAssureurClient(String nomAssureurClient) {
		this.nomAssureurClient = nomAssureurClient;
	}
	
	public String getDateDebutClient() {
		return dateDebutClient;
	}
	public void setDateDebutClient (String dateDebutClient) {
		this.dateDebutClient = dateDebutClient;
	}	
	public String getDateFinClient() {
		return dateFinClient;
	}
	public void setDateFinClient (String dateFinClient) {
		this.dateFinClient = dateFinClient;
	}
	public Integer getIdNationalClient() {
		return idNationalClient;
	}
	public void setIdNationalClient(Integer idNationalClient) {
		this.idNationalClient = idNationalClient;
	}
	
	public Integer getIdDossierMedical() {
		return idDossierMedical;
	}
	public void setIdDossierMedical(Integer idDossierMedical) {
		this.idDossierMedical = idDossierMedical;
	}
	
	

}
