package cham10jyo.user.contoller;

import cham10jyo.user.dao.UserDao;
import cham10jyo.user.dto.UserEditDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UserLogoutController",value = "/logout")
public class UserLogoutController extends HttpServlet {

    public UserLogoutController() {
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession = req.getSession();
        httpSession.invalidate();
        resp.sendRedirect("/");
    }
}