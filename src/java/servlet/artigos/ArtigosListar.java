/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.artigos;

import dao.ArtigoJpaController;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "Artigos", urlPatterns = {"/admin/artigos"})
public class ArtigosListar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        ArtigoJpaController dao = new ArtigoJpaController();
        List<Artigo> artigos = dao.findArtigoEntities();
        req.setAttribute("artigos", artigos);
        req.getRequestDispatcher("/backend/pages/artigos/listar.jsp").forward(req, resp);
        
    }

}
