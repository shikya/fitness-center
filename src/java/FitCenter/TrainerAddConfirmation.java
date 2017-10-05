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
@WebServlet(name = "TrainerAddConfirmation", urlPatterns = {"/TrainerAddConfirmation"})
public class TrainerAddConfirmation extends HttpServlet {
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
            out.println("<title>SignupConfirmation and Validation</title>");            
            out.println("</head>");
            out.println("<body>");
            
            Person per=new Person();
            per.setFname(request.getParameter("fname"));
            per.setMname(request.getParameter("mname"));
            per.setLname(request.getParameter("lname"));
            per.setGender(request.getParameter("sex"));
            per.setAdress(request.getParameter("adress"));
            per.setDob(Integer.parseInt(request.getParameter("yy")),Integer.parseInt(request.getParameter("mm")),Integer.parseInt(request.getParameter("dd")));
            per.setWeight(Integer.parseInt(request.getParameter("weight")));
            per.setHeight(Integer.parseInt(request.getParameter("height")));
            per.setPhno(request.getParameter("phno"));
            out.print(request.getParameter("phno"));
            per.setEphno(request.getParameter("ephno"));
            out.println("<hr>"+per.toSQLStringInsert()+"<hr>");

            ResultSet rs;
            st.execute(per.toSQLStringInsert());
            st.executeQuery("SELECT * FROM fitdb.person");
            rs=st.getResultSet();
            rs.last();
             
            int id=rs.getInt("pid");
            
            out.print("<hr>"+id+"<hr>");
            String str,str1;
            str1=request.getParameter("jyy")+"-"+request.getParameter("jmm")+"-"+request.getParameter("jdd");
            str="INSERT INTO `fitdb`.`trainer` (`fk_pid`, `jd`, `desc`, `wexp`) VALUES ('"+id+"', '"+str1+"', '"+request.getParameter("desc")+"', '"+request.getParameter("wexp")+"');";
            out.print(str);
            st.execute(str);
            
            RequestDispatcher rd=getServletContext().getRequestDispatcher("/Admin_add_trnr.jsp");
            rd.include(request, response);

            out.println("</body>");
            out.println("</html>");
        } 
        catch(Exception e){
            out.print("Error Ocoured as "+e.toString()+"<hr><b>Strack Trace</b><br>");
            e.printStackTrace(out);
            out.print("<br>Cause as<br>"+e.getCause()+"<hr><b>Message Return as</b><br>"+e.getMessage());

        }
        finally {            
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
