package cham10jyo.post.contoller;

import cham10jyo.post.dao.PostDao;
import cham10jyo.post.dto.PostAddDto;
import cham10jyo.post.dto.PostEditDto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/post")
public class PostController extends HttpServlet {

    private PostDao postDao =null;
    public PostController() {
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
        //TODO 게시글 조회 구현
        response.sendRedirect("./view/page/board/");
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
        super.doPost(req, resp);
        String title = req.getParameter("title");
        String userId = req.getParameter("userId");
        String content = req.getParameter("content");
        PostAddDto postAddDto = new PostAddDto(title,userId,content);
        postDao.write(postAddDto);

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
        String title = req.getParameter("title");
        Long postId = Long.parseLong(req.getParameter("id"));
        String content = req.getParameter("content");
        PostEditDto postEditDto = new PostEditDto(title,content);
        postDao.editContent(postEditDto,postId);
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
        super.doDelete(req, resp);
        Long postId = Long.parseLong(req.getParameter("id"));

        postDao.deleteSoft(postId);
    }
}