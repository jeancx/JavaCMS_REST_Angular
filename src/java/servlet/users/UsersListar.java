/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.users;

import dao.UserJpaController;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "Users", urlPatterns = {"/admin/users"})
public class UsersListar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        UserJpaController dao = new UserJpaController();
        List<User> users = dao.findUserEntities();
        req.setAttribute("users", users);
        req.getRequestDispatcher("/backend/pages/users/listar.jsp").forward(req, resp);
        
    }

}
