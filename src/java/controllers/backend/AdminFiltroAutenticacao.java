/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.backend;

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 1978233
 */
@WebFilter(filterName = "AdminFiltroAutenticacao", urlPatterns = {"/admin"}, dispatcherTypes = {DispatcherType.FORWARD, DispatcherType.REQUEST})
public class AdminFiltroAutenticacao implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req  = (HttpServletRequest) request;
        HttpServletResponse res  = (HttpServletResponse) response;
        HttpSession sessao = req.getSession();
        if (sessao.getAttribute("usuario") != null){
            //tudo ok
            chain.doFilter(request, response);
        } else {
            // não está ok
            res.sendRedirect("/JavaCMS/admin/login");
            //req.getRequestDispatcher("/login").forward(request, response);
        }
    }

    @Override
    public void destroy() {
        
    }
    
    
}
