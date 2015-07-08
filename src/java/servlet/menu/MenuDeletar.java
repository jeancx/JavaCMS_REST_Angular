/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.menu;

import dao.ArtigoJpaController;
import dao.exceptions.RollbackFailureException;
import servlet.artigos.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import models.Artigo;

/**
 *
 * @author Jean
 */
@WebServlet(name = "ArtigoDeletar", urlPatterns = {"/admin/artigo/deletar"})
public class MenuDeletar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        ArtigoJpaController dao = new ArtigoJpaController();
        
        Integer pk = Integer.parseInt(req.getParameter("id"));        
        try {
            dao.destroy(pk);
        } catch (RollbackFailureException ex) {
            Logger.getLogger(ArtigosDeletar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ArtigosDeletar.class.getName()).log(Level.SEVERE, null, ex);
        }

        resp.sendRedirect("/JavaCMS/admin/artigos");

    }

}
