package cham10jyo.user.contoller;

import cham10jyo.user.dao.UserDao;
import cham10jyo.user.dto.UserLoginDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserLoginController",value = "/user/login")
public class UserLoginController extends HttpServlet {

    private UserDao userDao = null;

    public UserLoginController() {
        userDao = new UserDao();
    }
    /**
     * 로그인 요청
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserLoginDto userLoginDto = new UserLoginDto(email,password);
        boolean loginState = userDao.login(userLoginDto,req);
        if (loginState){
            resp.sendRedirect("/");
        }else {
            resp.sendRedirect("/view/page/login.jsp");
        }


    }
}
