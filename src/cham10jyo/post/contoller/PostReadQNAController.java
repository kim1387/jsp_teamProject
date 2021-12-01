package cham10jyo.post.contoller;

import cham10jyo.post.dao.PostDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/post/readQNA")
public class PostReadQNAController extends HttpServlet {

    private PostDao postDao =null;
    public PostReadQNAController() {
        postDao = new PostDao();
    }


    /**
     *  게시글 조회 요청
     * @param req
     * @param res
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        req.setCharacterEncoding("utf-8");
        res.setContentType("text/html;charset=utf-8");
        //TODO 게시글 조회 구현
        res.sendRedirect("./view/page/board/");
    }
}