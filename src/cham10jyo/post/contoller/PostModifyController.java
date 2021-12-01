package cham10jyo.post.contoller;

import cham10jyo.post.dao.PostDao;
import cham10jyo.post.dto.PostEditDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/post/modify")
public class PostModifyController extends HttpServlet {

    private PostDao postDao =null;
    public PostModifyController() {
        postDao = new PostDao();
    }


    /**
     * 게시글 수정 요청
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String title = req.getParameter("title");
        Long postId = Long.parseLong(req.getParameter("id"));
        String content = req.getParameter("content");
        PostEditDto postEditDto = new PostEditDto(title,content);
        postDao.editContent(postEditDto,postId);
        resp.sendRedirect("/view/page/board/board_notice.jsp");

    }
}