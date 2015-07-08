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
@Table(name = "galeria_imgs")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "GaleriaImg.findAll", query = "SELECT g FROM GaleriaImg g"),
    @NamedQuery(name = "GaleriaImg.findById", query = "SELECT g FROM GaleriaImg g WHERE g.id = :id"),
    @NamedQuery(name = "GaleriaImg.findByGaleriaId", query = "SELECT g FROM GaleriaImg g WHERE g.galeriaId = :galeriaId"),
    @NamedQuery(name = "GaleriaImg.findBySrc", query = "SELECT g FROM GaleriaImg g WHERE g.src = :src"),
    @NamedQuery(name = "GaleriaImg.findByTitulo", query = "SELECT g FROM GaleriaImg g WHERE g.titulo = :titulo")})
public class GaleriaImg implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Integer id;
    @Column(name = "GALERIA_ID")
    private Integer galeriaId;
    @Size(max = 255)
    @Column(name = "SRC")
    private String src;
    @Size(max = 255)
    @Column(name = "TITULO")
    private String titulo;

    public GaleriaImg() {
    }

    public GaleriaImg(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGaleriaId() {
        return galeriaId;
    }

    public void setGaleriaId(Integer galeriaId) {
        this.galeriaId = galeriaId;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
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
        if (!(object instanceof GaleriaImg)) {
            return false;
        }
        GaleriaImg other = (GaleriaImg) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.GaleriaImg[ id=" + id + " ]";
    }
    
}
