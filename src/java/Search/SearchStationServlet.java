/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Search;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author grishasergei
 */
@WebServlet(name = "SearchStationServlet", urlPatterns = {"/SearchStationServlet"})
public class SearchStationServlet extends HttpServlet {

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
        doPost(request,response);
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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String requestedStation;
        requestedStation = new String(request.getParameter("requestedStationName").getBytes(
                "iso-8859-1"), "UTF-8");
        
        //create an instance of StationInformationProvider
        StationInfoProvider stationInfoProvider = new StationInfoProviderDB();
        
        //Get station object
        Station station = stationInfoProvider.getStation(requestedStation);

        ServletContext sc = getServletContext();
        
        String url;
        if (station != null){
            //station has been found
            url = "/station.jsp";
            RequestDispatcher rd = sc.getRequestDispatcher(url);

            request.setAttribute("stationName", station.getName());
            request.setAttribute("stationColor",station.getColor());
            request.setAttribute("latitude",station.getLatitude());
            request.setAttribute("longitude",station.getLongitude());
            
            
            rd.forward(request, response);
        } else {
            url = "/notfound.html";
            RequestDispatcher rd = sc.getRequestDispatcher(url);
            rd.forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "This servlet looks for a station after station name. Of station is found then a page with description is opened.";
    }// </editor-fold>

}
