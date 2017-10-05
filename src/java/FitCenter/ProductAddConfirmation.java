/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package FitCenter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SHRI
 */
@WebServlet(name = "ProductAddConfirmation", urlPatterns = {"/ProductAddConfirmation"})
public class ProductAddConfirmation extends HttpServlet {
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

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Product Add Confirmation</title>");            
            out.println("</head>");
            out.println("<body>");
            String name=request.getParameter("ename");
            String price=request.getParameter("price");
            String desc=request.getParameter("desc");
            String comp=request.getParameter("comp");
            String cat=request.getParameter("category");

            String str="INSERT INTO `fitdb`.`product` (`pname`, `company`, `category`, `pdesc`, `price`) VALUES ('"+name+"', '"+comp+"', '"+cat+"', '"+desc+"', '"+price+"');";
            st.execute(str);
            out.print("<hr><center>"+str+"</center><hr>");
            RequestDispatcher rd=getServletContext().getRequestDispatcher("/Admin_add_Nutri.jsp");
            rd.include(request, response);

        } 
        catch(Exception e){
            out.print("Error Ocoured as "+e.toString()+"<hr><b>Strack Trace</b><br>");
            e.printStackTrace(out);
            out.print("<br>Cause as<br>"+e.getCause()+"<hr><b>Message Return as</b><br>"+e.getMessage());

        }
        finally {            
            out.close();
        }    }

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
