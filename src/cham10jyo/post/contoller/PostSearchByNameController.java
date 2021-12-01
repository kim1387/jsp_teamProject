package cham10jyo.post.contoller;

import cham10jyo.post.dao.PostDao;
import cham10jyo.post.dto.PostCreateDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/post/create1")
public class PostSearchByNameController extends HttpServlet {

    private PostDao postDao =null;
    public PostSearchByNameController() {
        postDao = new PostDao();
    }


    /**
     * 게시글 작성자 이름으로 검색
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String name = req.getParameter("name");
        postDao.searchByTitle(name);
    }

}