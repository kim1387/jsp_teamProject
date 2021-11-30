package cham10jyo.user.contoller;

import cham10jyo.user.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UserDeleteController",value = "/user/delete")
public class UserDeleteController extends HttpServlet {

    /**
     * 회원 탈퇴 요청
     * //TODO password는 확인용 password
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    private UserDao userDao = null;

    public UserDeleteController() {
        userDao = new UserDao();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        userDao.Withdrawal(email,password);
    }
}
