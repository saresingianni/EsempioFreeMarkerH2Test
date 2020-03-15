package com.FreeMarker2.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "quintopiano")
public class QuintoPiano {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) 	
	private long id;
	
	
	
	@Column(name = "cognome")
	private String cognome;
	
	@Column(name = "nome")
	private String nome;
	
	@Column(name = "telefono")
	private String telefono;
	
	@Column(name = "cellulare")
	private String cellulare;
	
	
	@Column(name = "genere")
	private String genere;
	
	@Column(name = "email_indirizzo")
	private String emailId;
	
	@Lob
	@Column(name = "foto")
	private String foto;
	
	@Lob
	@Column(name = "fotoBig")
	private String fotoBig;
	//@Column(name = "foto")
	//private String VARCHAR(255) foto;
	
	@Column(name = "path")
	private String path;
	
	public QuintoPiano() {
     super();
    }
	public QuintoPiano( 
			String cognome,
			String nome, 
			String telefono,
			String cellulare,
			String genere,
			String emailId,
			String foto,		            
			String path,	
			String fotoBig	
			) {

		
		this.cognome = cognome;
		this.nome = nome;
		this.telefono = telefono;
		this.cellulare = cellulare;
		 this.genere = genere;
		this.emailId = emailId;
		this.foto = foto;
		this.path = path;
		this.fotoBig = fotoBig;
		
		
	}

		public long getId() {
			return id;
		}
		public void setId(long id) {
			this.id = id;
		}
		
		
		
		public String getEmailId() {
			return emailId;
		}
		public void setEmailId(String emailId) {
			this.emailId = emailId;
		}
		public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		public String getCognome() {
			return cognome;
		}
		public void setCognome(String cognome) {
			this.cognome = cognome;
		}
		public String getGenere() {
			return genere;
		}
		public void setGenere(String genere) {
			this.genere = genere;
		}
		public String getPath() {
			return path;
		}
		public void setPath(String path) {
			this.path = path;
		}
		public String getCellulare() {
			return cellulare;
		}
		public void setCellulare(String cellulare) {
			this.cellulare = cellulare;
		}
		public String getTelefono() {
			return telefono;
		}
		public void setTelefono(String telefono) {
			this.telefono = telefono;
		}
		public String getFoto() {
			return foto;
		}
		public void setFoto(String foto) {
			this.foto = foto;
		}
		public String getFotoBig() {
			return fotoBig;
		}
		public void setFotoBig(String fotoBig) {
			this.fotoBig = fotoBig;
		}
}
