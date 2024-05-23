package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.Receptionist1;
import com.util.DBConnect;
import com.util.ReceptionistDButil;


@WebServlet("/user_register")
public class RceptionistServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			Receptionist1 u = new Receptionist1(fullName, email, password);

			ReceptionistDButil dao = new ReceptionistDButil(DBConnect.getConnection());

			HttpSession session = req.getSession();

			boolean f = dao.register(u);

			if (f) {

				session.setAttribute("sucMsg", "Register Sucessfully");
				resp.sendRedirect("success.jsp");

			} else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("unsuccess.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
