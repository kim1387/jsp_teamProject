package cham10jyo.post.contoller;

import cham10jyo.post.dao.PostDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/post/create2")
public class PostSearchByTitleController extends HttpServlet {

    private PostDao postDao =null;
    public PostSearchByTitleController() {
        postDao = new PostDao();
    }


    /**
     * 게시글 이름으로 검색 요청
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String title = req.getParameter("title");
        
        resp.sendRedirect("/view/page/board/board_notice_search.jsp");
    }

}