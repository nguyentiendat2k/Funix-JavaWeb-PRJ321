/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author demonslight998
 */
public class LoginController extends HttpServlet {

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
    String username = request.getParameter("name");
    String password = request.getParameter("password");

    String userDefault = request.getServletContext().getInitParameter("username");
    String passwordDefault = request.getServletContext().getInitParameter("password");

    System.out.println(username + " " + userDefault + " " + password + " " + passwordDefault);

    if (!username.equals(userDefault)) {
      request.setAttribute("error", "login failded ! User not found !");
      request.getRequestDispatcher("Login.jsp").forward(request, response);
    } else if (username.equals(userDefault) && !password.equals(passwordDefault)) {
      request.setAttribute("error", "login failded ! Password is wrong !");
      request.getRequestDispatcher("Login.jsp").forward(request, response);
    } else {
      request.setAttribute("username", username);
      request.getRequestDispatcher("page.jsp").forward(request, response);
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
