/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.paginas;

import dao.ArtigoJpaController;
import dao.PageJpaController;
import dao.exceptions.RollbackFailureException;
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
import servlet.artigos.ArtigosEditar;

/**
 *
 * @author HT
 */
@WebServlet(name = "PaginasEditar", urlPatterns = {"/admin/paginas/editar"})
public class PaginasEditar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        PageJpaController dao = new PageJpaController();
        
        Integer pk = Integer.parseInt(req.getParameter("id"));
        Page page = dao.findPage(pk);
        req.setAttribute("page", page);
       

        req.getRequestDispatcher("/backend/pages/paginas/editar.jsp").forward(req, resp);
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PageJpaController dao = new PageJpaController();

        Integer pk = Integer.parseInt(req.getParameter("id"));
        String titulo = req.getParameter("titulo");
        String conteudo = req.getParameter("conteudo");

        Page page = dao.findPage(pk);

        page.setTitulo(titulo);
        page.setConteudo(conteudo);

        try {
            dao.edit(page);
        } catch (Exception ex) {
            Logger.getLogger(ArtigosEditar.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        resp.sendRedirect("/JavaCMS/admin/artigos");

    }

}
