/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.exceptions.NonexistentEntityException;
import dao.exceptions.PreexistingEntityException;
import dao.exceptions.RollbackFailureException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.UserTransaction;
import models.GaleriaImg;

/**
 *
 * @author Jean
 */
public class GaleriaImgJpaController implements Serializable {

    public GaleriaImgJpaController() {
        this.emf = Persistence.createEntityManagerFactory("JavaCMSPU");
    }
    
    public GaleriaImgJpaController(UserTransaction utx, EntityManagerFactory emf) {
        this.utx = utx;
        this.emf = emf;
    }
    
    private UserTransaction utx = null;
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(GaleriaImg galeriaImg) throws PreexistingEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            em.persist(galeriaImg);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            if (findGaleriaImg(galeriaImg.getId()) != null) {
                throw new PreexistingEntityException("GaleriaImg " + galeriaImg + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(GaleriaImg galeriaImg) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            galeriaImg = em.merge(galeriaImg);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = galeriaImg.getId();
                if (findGaleriaImg(id) == null) {
                    throw new NonexistentEntityException("The galeriaImg with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            GaleriaImg galeriaImg;
            try {
                galeriaImg = em.getReference(GaleriaImg.class, id);
                galeriaImg.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The galeriaImg with id " + id + " no longer exists.", enfe);
            }
            em.remove(galeriaImg);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<GaleriaImg> findGaleriaImgEntities() {
        return findGaleriaImgEntities(true, -1, -1);
    }

    public List<GaleriaImg> findGaleriaImgEntities(int maxResults, int firstResult) {
        return findGaleriaImgEntities(false, maxResults, firstResult);
    }

    private List<GaleriaImg> findGaleriaImgEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(GaleriaImg.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public GaleriaImg findGaleriaImg(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(GaleriaImg.class, id);
        } finally {
            em.close();
        }
    }

    public int getGaleriaImgCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<GaleriaImg> rt = cq.from(GaleriaImg.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
