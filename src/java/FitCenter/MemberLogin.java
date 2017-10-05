/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package FitCenter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SHRI
 */
@WebServlet(name = "MemberLogin", urlPatterns = {"/MemberLogin"})
public class MemberLogin extends HttpServlet {
    private Connection con;
    private java.sql.Statement st;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fitdb","root","tiger");
            st=con.createStatement();

            int memid=Integer.parseInt(request.getParameter("mid"));
            String pass=request.getParameter("password");
            
            ResultSet rs;
            rs=st.executeQuery("SELECT * FROM fitdb.member where mid='"+memid+"';");
            rs.next();
            if(rs.getString("pass").equals(pass))
            {
                //Sucssesful
                HttpSession session= request.getSession(true);
                session.setAttribute("id", memid);
                st.execute("SELECT * FROM fitdb.person where pid='"+rs.getInt("fk_mem_pid") +"';");
                rs=st.getResultSet();
                rs.next();
                session.setAttribute("name", rs.getString("fname")+" "+rs.getString("lname"));
                response.sendRedirect("index.jsp");
            }
            else
            {
                //Fail
                response.sendRedirect("index.jsp?atmp=1");
            }
            
            
        }
        catch(Exception e){
            out.print("Error Ocoured as "+e.toString()+"<hr><b>Strack Trace</b><br>");
            e.printStackTrace(out);
            out.print("<br>Cause as<br>"+e.getCause()+"<hr><b>Message Return as</b><br>"+e.getMessage());

        }finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
