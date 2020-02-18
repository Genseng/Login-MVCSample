package org.chuangyou.servlet;

import org.chuangyou.entity.Login;
import org.chuangyou.dao.LoginDao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 处理登陆
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");

		Login login = new Login(name, pwd);

		// 调用模型层的登陆功能
		int result = LoginDao.login(login);
		if (result > 0) {// 登陆成功
			System.out.println("登陆成功");
			response.sendRedirect("welcome.jsp");
		} else if (result == 0) {// 用户名或密码错误
			System.out.println("用户名或密码错误");
			response.sendRedirect("login.jsp");
		} else {// 系统异常
			System.out.println("系统异常");
			response.sendRedirect("login.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
