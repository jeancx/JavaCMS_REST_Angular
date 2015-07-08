/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users;

import dao.UserJpaController;
import dao.exceptions.RollbackFailureException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.User;

/**
 *
 * @author Jean
 */
@WebServlet(name = "ArtigosEditar", urlPatterns = {"/admin/artigo/editar"})
public class UsersEditar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        UserJpaController dao = new UserJpaController();
        
        Integer pk = Integer.parseInt(req.getParameter("id"));
        User user = dao.findUser( pk );
        req.setAttribute("user", user);

        req.getRequestDispatcher("/backend/pages/artigos/editar.jsp").forward(req, resp);
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        UserJpaController dao = new UserJpaController();

        Integer pk = Integer.parseInt(req.getParameter("id"));
        String nome = req.getParameter("nome");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");

        User user = dao.findUser(pk);

        user.setNome(nome);
        user.setEmail(email);
        user.setSenha(senha);

        try {
            dao.edit(user);
        } catch (RollbackFailureException ex) {
            Logger.getLogger(UsersEditar.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(UsersEditar.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        resp.sendRedirect("/JavaCMS/admin/users");

    }

}
