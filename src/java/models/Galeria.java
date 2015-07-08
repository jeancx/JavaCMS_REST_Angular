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
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Jean
 */
@Entity
@Table(name = "galerias")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Galeria.findAll", query = "SELECT g FROM Galeria g"),
    @NamedQuery(name = "Galeria.findById", query = "SELECT g FROM Galeria g WHERE g.id = :id"),
    @NamedQuery(name = "Galeria.findByDescricao", query = "SELECT g FROM Galeria g WHERE g.descricao = :descricao"),
    @NamedQuery(name = "Galeria.findByTitulo", query = "SELECT g FROM Galeria g WHERE g.titulo = :titulo")})
public class Galeria implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Integer id;
    @Size(max = 255)
    @Column(name = "DESCRICAO")
    private String descricao;
    @Size(max = 255)
    @Column(name = "TITULO")
    private String titulo;

    public Galeria() {
    }

    public Galeria(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
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
        if (!(object instanceof Galeria)) {
            return false;
        }
        Galeria other = (Galeria) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Galeria[ id=" + id + " ]";
    }
    
}
