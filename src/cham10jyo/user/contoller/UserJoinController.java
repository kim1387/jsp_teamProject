package cham10jyo.user.contoller;

import cham10jyo.user.dao.UserDao;
import cham10jyo.user.dto.UserJoinDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserJoinController",value = "/user/join")
public class UserJoinController extends HttpServlet {

    private UserDao userDao = null;
    public UserJoinController() {
        userDao = new UserDao();
    }
    /**
     * 회원가입 요청
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        System.out.println(req.getParameter("email"));
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String gender = req.getParameter("gender");
        String email = req.getParameter("email");
        String authority = req.getParameter("authority");

        UserJoinDto userJoinDto = new UserJoinDto(password,name,gender,email,authority);
        userDao.join(userJoinDto);

        resp.sendRedirect("/view/page/login.jsp");

    }






}
