/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.paginas;

import dao.PageJpaController;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Page;

/**
 *
 * @author HT
 */
@WebServlet(name = "PaginasListar", urlPatterns = {"/admin/paginas"})
public class PaginasListar extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PageJpaController dao = new PageJpaController();
        List<Page> pages = dao.findPageEntities();
        req.setAttribute("pages", pages);
        req.getRequestDispatcher("/backend/pages/paginas/listar.jsp").forward(req, resp);
        
    }

}
