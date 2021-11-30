package cham10jyo.user.contoller;

import cham10jyo.user.dao.UserDao;
import cham10jyo.user.dto.UserEditDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "UserEditController",value = "/user/edit")
public class UserEditController extends HttpServlet {

    private UserDao userDao = null;

    public UserEditController() {
        userDao = new UserDao();
    }


    /**
     * 회원 정보 수정 요청
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        UserEditDto userEditDto = new UserEditDto(password,name,email);
        userDao.edit(userEditDto);

        resp.sendRedirect("/view/page/main.jsp");
    }
}