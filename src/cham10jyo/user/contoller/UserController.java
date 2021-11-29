package cham10jyo.user.contoller;

import cham10jyo.user.dao.UserDao;
import cham10jyo.user.dto.UserEditDto;
import cham10jyo.user.dto.UserJoinDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user")
public class UserController extends HttpServlet {

    private UserDao userDao = null;
    public UserController() {
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
        super.doPost(req, resp);
        String id = req.getParameter("id");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String gender = req.getParameter("gender");
        String email = req.getParameter("email");
        String authority = req.getParameter("authority");
        UserJoinDto userJoinDto = new UserJoinDto(id,password,name,gender,email,authority);
        userDao.join(userJoinDto);

    }


    /**
     * 게시글 수정 요청
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
        String id = req.getParameter("id");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        UserEditDto userEditDto = new UserEditDto(id,password,name,email);
        userDao.edit(userEditDto);
    }


    /**
     * 게시글 삭제 요청
     * //TODO password는 확인용 password
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp);
        String id = req.getParameter("id");
        String password = req.getParameter("password");
        userDao.Withdrawal(id,password);
    }
}
