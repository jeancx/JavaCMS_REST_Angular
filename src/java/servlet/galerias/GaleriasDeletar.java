/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.galerias;

import dao.GaleriaJpaController;
import servlet.artigos.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jean
 */
@WebServlet(name = "GaleriaDeletar", urlPatterns = {"/admin/galeria/deletar"})
public class GaleriasDeletar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        GaleriaJpaController dao = new GaleriaJpaController();
        
        Integer pk = Integer.parseInt(req.getParameter("id"));        
        try {
            dao.destroy(pk);
        } catch (Exception ex) {
            Logger.getLogger(ArtigosDeletar.class.getName()).log(Level.SEVERE, null, ex);
        }

        resp.sendRedirect("/JavaCMS/admin/artigos");

    }

}
