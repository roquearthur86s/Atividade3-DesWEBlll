package com.ifpr.atividade3;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("Laboratório".equals(username) && "IFPR".equals(password)) {
            response.sendRedirect("sucesso.jsp");

            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogado", username);
        } else {
            request.setAttribute("errorMessage", "Nome ou senha incorretos");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
