package org.zutjmx.apiservlet.webapp.form;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/registro")
public class FormServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        resp.setContentType("text/html");

        try(PrintWriter out = resp.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("    <head>");
            out.println("      <meta charset=\"UTF-8\">");
            out.println("      <title>Resultado de los datos enviados en el formulario</title>");
            out.println("    </head>");
            out.println("  <body>");
            out.println("      <h1>Resultado de los datos enviados en el formulario</h1>");
            out.println("      <ul>");
            out.println("           <li>Usuario: " + username + "</li>");
            out.println("           <li>Contraseña: " + password + "</li>");
            out.println("           <li>Correo electrónico: " + email + "</li>");
            out.println("      </ul>");
            out.println("  </body>");
            out.println("</html>");
        }

    }
}
