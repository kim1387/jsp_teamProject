package cham10jyo.post.contoller;

import cham10jyo.post.dao.PostDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/post/delete")
public class PostDeleteController extends HttpServlet {

    private PostDao postDao =null;
    public PostDeleteController() {
        postDao = new PostDao();
    }


    /**
     * 게시글 삭제 요청
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Long postId = Long.parseLong(req.getParameter("id"));

        postDao.delete(postId);
    }
}