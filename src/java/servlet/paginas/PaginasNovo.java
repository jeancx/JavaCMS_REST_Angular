/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.paginas;

import dao.ArtigoJpaController;
import dao.PageJpaController;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Artigo;
import models.Page;
import servlet.artigos.ArtigosNovo;

/**
 *
 * @author HT
 */
@WebServlet(name = "PaginasNovo", urlPatterns = {"/admin/paginas/novo"})
public class PaginasNovo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/backend/pages/paginas/novo.jsp").forward(req, resp);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String titulo = req.getParameter("titulo");
        String conteudo  = req.getParameter("conteudo");
            
        PageJpaController dao = new PageJpaController();

        Page page = new Page(); 
        page.setTitulo(titulo);
        page.setConteudo(conteudo);

        try {
            dao.create(page);
        } catch (Exception ex) {
            Logger.getLogger(ArtigosNovo.class.getName()).log(Level.SEVERE, null, ex);
        }

        resp.sendRedirect("/JavaCMS/admin/paginas");
             
       
    }

}
