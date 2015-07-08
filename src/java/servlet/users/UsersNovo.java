/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users;

import dao.UserJpaController;
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
@WebServlet(name = "UserNovo", urlPatterns = {"/admin/users/novo"})
public class UsersNovo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/backend/pages/users/novo.jsp").forward(req, resp);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            
        UserJpaController dao = new UserJpaController();
        
        String nome = req.getParameter("nome");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");

        User user = new User(); 

        user.setNome(nome);
        user.setEmail(email);
        user.setSenha(senha);
        
        try {
            dao.create(user);
        } catch (Exception ex) {
            Logger.getLogger(UsersNovo.class.getName()).log(Level.SEVERE, null, ex);
        }

        resp.sendRedirect("/JavaCMS/admin/users");
             
       
    }

}
