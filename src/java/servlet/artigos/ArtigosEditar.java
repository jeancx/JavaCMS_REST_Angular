/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.artigos;

import dao.ArtigoJpaController;
import dao.exceptions.RollbackFailureException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.transaction.UserTransaction;
import models.Artigo;

/**
 *
 * @author Jean
 */
@WebServlet(name = "ArtigosEditar", urlPatterns = {"/admin/artigo/editar"})
public class ArtigosEditar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        ArtigoJpaController dao = new ArtigoJpaController();
        
        Integer pk = Integer.parseInt(req.getParameter("id"));
        Artigo artigo = dao.findArtigo( pk );
        req.setAttribute("artigo", artigo);
        
        System.out.println(artigo);

        req.getRequestDispatcher("/backend/pages/artigos/editar.jsp").forward(req, resp);
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        ArtigoJpaController dao = new ArtigoJpaController();

        Integer pk = Integer.parseInt(req.getParameter("id"));
        String titulo = req.getParameter("titulo");
        String categoria = req.getParameter("categoria");
        String conteudo = req.getParameter("conteudo");
        String autor = req.getParameter("autor");

        Artigo artigo = dao.findArtigo(pk);

        artigo.setTitulo(titulo);
        artigo.setCategoria(categoria);
        artigo.setConteudo(conteudo);
        artigo.setAutor(autor);

        try {
            dao.edit(artigo);
        } catch (RollbackFailureException ex) {
            Logger.getLogger(ArtigosEditar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(ArtigosEditar.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        resp.sendRedirect("/JavaCMS/admin/artigos");

    }

}
