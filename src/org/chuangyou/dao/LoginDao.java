package org.chuangyou.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.chuangyou.entity.Login;
import org.chuangyou.servlet.LoginServlet;

//模型层 处理登陆
public class LoginDao {

	public static int login(Login login) {// -1系统异常 0用户名或密码有误 1登陆成功

		// int flag = -1;
		String URL = "jdbc:mysql://localhost:3306/JDBC";
		String USERNAME = "root";
		String PWD = "root";

		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USERNAME, PWD);

			String sql = "select count(*) from  login where uname=? and upwd=?";
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, login.getUname());
			pstmt.setString(2, login.getUpwd());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
			if (result > 0) {
				return 1;
			} else {
				return 0;// 用户名或密码有误
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return -1;
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
