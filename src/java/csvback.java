/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;

import java.io.BufferedReader;

import java.io.InputStream;

import java.io.InputStreamReader;

import java.io.PrintWriter;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.Statement;

import java.util.Iterator;

import java.util.List;

import java.util.Map;

import java.util.Map.Entry;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 

    import org.apache.commons.fileupload.FileItem;

import org.apache.commons.fileupload.FileItemFactory;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.Servlet;
/**
 *
 * @author HAREESH KUMAR REDDY
 */
@WebServlet(urlPatterns = {"/csvfile"})
public class csvback extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

         

         response.setContentType("text/html"); 

         PrintWriter out=response.getWriter();

        try {

String category = "";

                 InputStream csvfile = null;

     

                 FileItemFactory factory = new DiskFileItemFactory();

     

                 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
                  
                 ServletFileUpload upload = new ServletFileUpload(factory);

                 Map<String, List<FileItem>> file = upload.parseParameterMap(request);
                  

                 Iterator entries = file.entrySet().iterator();

                while (entries.hasNext()) {
                      Entry thisEntry = (Entry) entries.next();

                      List value = (List) thisEntry.getValue();
    for (Iterator it = value.iterator(); it.hasNext();) {
        FileItem uploadItem = (FileItem) it.next();
        csvfile = uploadItem.getInputStream();
    }

                 }//while

     

                InputStreamReader isr = new InputStreamReader(csvfile);

                BufferedReader reader = new BufferedReader(isr);

                

                String text = "";

                reader.readLine();

     

                    // We read the file line by line and later will be displayed on the browser page.

                while ((text = reader.readLine()) != null) {

                    String[] columns = text.split(",");

                    System.out.println("count columns" + columns.length);

                    String rowdata = "";

                        for (String value : columns) {

                            rowdata += "'" + value + "',";

                        }

                       rowdata = rowdata.substring(0, rowdata.length() - 1);

                       String select = category;

                         try {

                               Class.forName("com.mysql.jdbc.Driver");

                               Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nishanthi","root","root");

                               Statement stmt=con.createStatement();

                               String query = "insert into csv values(" + rowdata + ")";

                               stmt.executeUpdate(query);

                                out.println("Successfully uploaded");

                              }//try

                              catch (Exception e) {

                               out.println("Error Try Again"+e.getMessage());

                               } //catch

                     }

 

           }// try

          catch (Exception e) {

              out.println("Error Try Again"+e.getMessage());

        }

    }

 

    

}