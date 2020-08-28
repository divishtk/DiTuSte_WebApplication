/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nevets
 */
public class loginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("GET login servlet");
        
        HttpSession hs = null;
        String name = request.getParameter("uname");
        String pass = request.getParameter("upass");
        boolean flag = false, exist = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection dbConn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/cryptodb?useSSL=false&allowPublicKeyRetrieval=true", "root", "Steven@1996");
            dbConn.setAutoCommit(false);
            PreparedStatement ps = dbConn.prepareStatement(
                    "select * from users where userName=? and userPassword=?");
            ps.setString(1, name);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                exist = true;
                String name1 = rs.getString(2);
                String pass1 = rs.getString(3);
                flag = (name.equalsIgnoreCase(name1) && pass.equalsIgnoreCase(pass1) ? true : false);
                
                if(flag){
                    hs = request.getSession();
                    hs.setAttribute("uName", name1);
                    hs.setAttribute("uemailId", pass1);
                }
            }
            response.setContentType("text/html;charset=UTF-8");

            if (exist) {
                if (flag) {
                    response.sendRedirect("/DiTuSte_Cryto/views/home.jsp");
                } else {
                    try (PrintWriter out = response.getWriter()) {
                        out.println("<!DOCTYPE html>");
                        out.println("<html>");
                        out.println("<head>");
                        out.println("<title>Servlet loginServlet</title>");
                        out.println("</head>");
                        out.println("<body>");
                        out.println("<h1> The User/Password doesn't match. </h1>");
                        out.println("<span><a href='/DiTuSte_Cryto/index.html'> click to go back. </a></span>");
                        out.println("</body>");
                        out.println("</html>");
                    }
                }
            } else {
                try (PrintWriter out = response.getWriter()) {
                    out.println("<!DOCTYPE html>");
                    out.println("<html>");
                    out.println("<head>");
                    out.println("<title>Servlet loginServlet</title>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<h1> The User doesn't exist. </h1>");
                    out.println("<span><a href='/DiTuSte_Cryto/'> click to go back. </a></span>");
                    out.println("</body>");
                    out.println("</html>");
                }
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST login servlet");
        
        int userId = 0;
        String name, pass, emailId, role;
        try {

            name = request.getParameter("name");
            pass = request.getParameter("pass");
            emailId = request.getParameter("email");
            role = request.getParameter("role");

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection dbConn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/cryptodb?useSSL=false&allowPublicKeyRetrieval=true", "root", "Steven@1996");
            dbConn.setAutoCommit(false);
            PreparedStatement ps = dbConn.prepareStatement(
                    "insert into users(userName, userPassword, userEmailId, userType, updatedBy) values (?,?,?,?,CURDATE())");
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setString(3, emailId);
            ps.setString(4, role);
            int i = ps.executeUpdate();
            if (i > 0) {
                dbConn.commit();
                System.out.println("Successfully Updated 1 row");
            } else {
                System.out.println("Failed to Update");
            }
            response.sendRedirect("/DiTuSte_Cryto/");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
