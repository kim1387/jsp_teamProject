package cham10jyo.post.contoller;

import cham10jyo.post.dao.PostDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/post/readNotice")
public class PostReadNoticeController extends HttpServlet {

    private PostDao postDao =null;
    public PostReadNoticeController() {
        postDao = new PostDao();
    }


    /**
     *  게시글 조회 요청
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        //TODO 게시판 페이지로 이동
        response.sendRedirect("./view/page/board/");
    }
}