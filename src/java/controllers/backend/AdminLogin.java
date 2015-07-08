/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.backend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Jean
 */
@WebServlet(name = "AdminLogin", urlPatterns = {"/admin/login"})
public class AdminLogin extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if ("logout".equals(req.getParameter("acao"))){
            req.getSession().invalidate();
        }
        req.getRequestDispatcher("/backend/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String usuario = req.getParameter("usuario");
        String senha  = req.getParameter("senha");
        HttpSession sessao = req.getSession(true);
        
        if ("joaquim".equals(usuario) && "123".equals(senha)){
            sessao.setAttribute("usuario", "Joaquim");
            resp.sendRedirect("index.jsp");
        } else if ("maria".equals(usuario) && "linda".equals(senha)){
            sessao.setAttribute("usuario", "Maria");
            resp.sendRedirect("index.jsp");
        } else {
            resp.sendError(402);
        }
    }

}
