package cham10jyo.post.contoller;

import cham10jyo.post.dao.PostDao;
import cham10jyo.post.dto.PostCreateDto;

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
     * 게시글 생성 요청
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String userEmail = req.getParameter("userEmail");
        String content = req.getParameter("content");
        String bbsType = req.getParameter("bbsType");
        PostCreateDto postCreateDto = new PostCreateDto(title,userEmail,content,bbsType);
        postDao.write(postCreateDto);
    }

}