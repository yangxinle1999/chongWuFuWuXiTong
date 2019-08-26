package com.contextPath;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

public class context {
    @WebServlet(urlPatterns ={},loadOnStartup = 2)
    public class webpathservlet extends HttpServlet {    //拿到上下文路径,以后可以直接引用
        @Override
        public void init(ServletConfig config) throws ServletException {
            config.getServletContext().setAttribute("cxt",config.getServletContext().getContextPath());
            super.init(config);
        }
    }

}

