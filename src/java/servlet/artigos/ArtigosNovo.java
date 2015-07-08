/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.artigos;

import dao.ArtigoJpaController;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Artigo;

/**
 *
 * @author Jean
 */
@WebServlet(name = "ArtigoNovo", urlPatterns = {"/admin/artigos/novo"})
public class ArtigosNovo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/backend/pages/artigos/novo.jsp").forward(req, resp);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String titulo = req.getParameter("titulo");
        String categoria  = req.getParameter("categoria");
        String conteudo  = req.getParameter("conteudo");
        String autor  = req.getParameter("autor");
            
        ArtigoJpaController dao = new ArtigoJpaController();

        Artigo artigo = new Artigo(); 
        artigo.setAutor(autor);
        artigo.setCategoria(categoria);
        artigo.setConteudo(conteudo);
        artigo.setTitulo(titulo);

        try {
            dao.create(artigo);
        } catch (Exception ex) {
            Logger.getLogger(ArtigosNovo.class.getName()).log(Level.SEVERE, null, ex);
        }

        resp.sendRedirect("/JavaCMS/admin/artigos");
             
       
    }

}
