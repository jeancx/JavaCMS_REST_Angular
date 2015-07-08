/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Jean
 */
@Entity
@Table(name = "artigos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Artigo.findAll", query = "SELECT a FROM Artigo a"),
    @NamedQuery(name = "Artigo.findById", query = "SELECT a FROM Artigo a WHERE a.id = :id"),
    @NamedQuery(name = "Artigo.findByTitulo", query = "SELECT a FROM Artigo a WHERE a.titulo = :titulo"),
    @NamedQuery(name = "Artigo.findByCategoria", query = "SELECT a FROM Artigo a WHERE a.categoria = :categoria"),
    @NamedQuery(name = "Artigo.findByAutor", query = "SELECT a FROM Artigo a WHERE a.autor = :autor")})
public class Artigo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Size(max = 100)
    @Column(name = "TITULO")
    private String titulo;
    @Size(max = 50)
    @Column(name = "CATEGORIA")
    private String categoria;
    @Lob
    @Size(max = 65535)
    @Column(name = "CONTEUDO")
    private String conteudo;
    @Size(max = 100)
    @Column(name = "AUTOR")
    private String autor;

    public Artigo() {
    }

    public Artigo(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Artigo)) {
            return false;
        }
        Artigo other = (Artigo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Artigo[ id=" + id + " ]";
    }
    
}
