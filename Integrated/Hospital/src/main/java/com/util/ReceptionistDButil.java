package com.util;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Receptionist1;



public class ReceptionistDButil {

	private Connection connection;

	public ReceptionistDButil(Connection conn) {
		super();
		this.connection = conn;
	}

	public boolean register(Receptionist1 u) {
		boolean f = false;

		try {
			String sql = "insert into receptionist(full_name,email,password) values(?,?,?) ";

			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, u.getFullName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return f;
	}

	public Receptionist1 login(String em, String psw) {
		Receptionist1 R = null;

		try {
			String sql = "select * from user_dtls where email=? and password=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, em);
			ps.setString(2, psw);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
					R= new Receptionist1();
				R.setId(rs.getInt(1));
				R.setFullName(rs.getString(2));
				R.setEmail(rs.getString(3));
				R.setPassword(rs.getString(4));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return R;
	}

	

}
