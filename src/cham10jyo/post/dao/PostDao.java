package cham10jyo.post.dao;

import cham10jyo.post.domain.Post;
import cham10jyo.post.dto.PostCreateDto;
import cham10jyo.post.dto.PostEditDto;
import cham10jyo.util.DbUtil;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class PostDao {
    private Connection connection;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public PostDao() {
        connection = DbUtil.getConnection();
    }


    /**
     *  게시글 생성
     * @param postCreateDto 제목
     * @return 게시글 생성 성공 여부
     */
    public boolean write(PostCreateDto postCreateDto) {
        String SQL = "insert into post values(default, ?, ?, ?, ?, ?, ?)";
        try {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

            pstmt = connection.prepareStatement(SQL,Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, postCreateDto.getTitle());
            pstmt.setString(2, postCreateDto.getUserId());
            pstmt.setTimestamp(3, timestamp); //작성 날짜
            pstmt.setTimestamp(4, timestamp); //수정 날짜
            pstmt.setString(5, postCreateDto.getContent());
            pstmt.setString(6, postCreateDto.getBbsType());
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false; //데이터베이스 오류
        }
    }


    /**
     * 게시글 수정
     * @param id 수정할 게시글을 찾기 위한 id
     * @param postEditDto 제목이 title로 수정됨
     * @return
     */
    public boolean editContent(PostEditDto postEditDto, Long id) {
        try {
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            pstmt = connection.prepareStatement("update post set title=?, updated_date=?,content=? where id=?");
            pstmt.setString(1, postEditDto.getTitle());
            pstmt.setTimestamp(2, timestamp);
            pstmt.setString(3, postEditDto.getContent());
            pstmt.setLong(4, id);
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false; //데이터베이스 오류
        }
    }

    /**
     * 게시글  삭제
     * @param id
     * @return
     */
    public boolean delete(Long id) {
        try {
            pstmt = connection.prepareStatement("delete from post where id = ?");
            pstmt.setLong(1, id);
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false; //데이터베이스 오류
        }
    }


    /**
     * 사용자 이름으로 게시글 검색
     * @param name
     * @return
     */
    public ArrayList<Post> searchByUserName(String name) {
        try {
            ArrayList<Post> posts = new ArrayList<Post>();
            pstmt = connection.prepareStatement("select * from post where name like %?%");
            pstmt.setString(1, name);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Post post = new Post();
                post.setId(rs.getLong(1));
                post.setTitle(rs.getString(2));
                post.setUserEmail(rs.getString(3));
                post.setCreatedDate(rs.getTimestamp(4));
                post.setUpdatedDate(rs.getTimestamp(5));
                post.setContent(rs.getString(6));
                posts.add(post);
            }
            pstmt.executeUpdate();
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
            return null; //데이터베이스 오류
        }
    }


    /**
     * title로 게시글 검색
     * @param title
     * @return
     */
    public ArrayList<Post> searchByTitle(String title) {
        ArrayList<Post> posts = new ArrayList<Post>();
        try {
            pstmt = connection.prepareStatement("select * from post where title = %?%");
            pstmt.setString(1, title);
            rs = pstmt.executeQuery();
            while (rs.next()){
                Post post = new Post();
                post.setId(rs.getLong(1));
                post.setTitle(rs.getString(2));
                post.setUserEmail(rs.getString(3));
                post.setCreatedDate(rs.getTimestamp(4));
                post.setUpdatedDate(rs.getTimestamp(5));
                posts.add(post);
            }
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
            return null; //데이터베이스 오류
        }
    }


    /**
     * QNA 게시물 불러오기
     * @return
     */
    public ArrayList<Post> getQNAPost() {
        ArrayList<Post> posts = new ArrayList<Post>();
        try {
            pstmt = connection.prepareStatement("select * from post where bbs_type='qna' order by id");
            rs = pstmt.executeQuery();
            while (rs.next()){
                Post post = new Post();
                post.setId(rs.getLong("id"));
                post.setTitle(rs.getString("title"));
                post.setUserEmail(rs.getString("user_id"));
                post.setCreatedDate(rs.getTimestamp("created_date"));
                post.setUpdatedDate(rs.getTimestamp("updated_date"));
                post.setContent(rs.getString("content"));
                post.setBbsType(rs.getString("bbs_type"));
                posts.add(post);
            }
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
            return null; //데이터베이스 오류
        }
    }

    /**
     * notice 게시물 불러오기
     * @return
     */
    public ArrayList<Post> getNoticePost() {
        ArrayList<Post> posts = new ArrayList<Post>();
        try {
            pstmt = connection.prepareStatement("select * from post where bbs_type='notice' order by id");
            rs = pstmt.executeQuery();
            while (rs.next()){
                Post post = new Post();
                post.setId(rs.getLong("id"));
                post.setTitle(rs.getString("title"));
                post.setUserEmail(rs.getString("user_id"));
                post.setCreatedDate(rs.getTimestamp("created_date"));
                post.setUpdatedDate(rs.getTimestamp("updated_date"));
                post.setContent(rs.getString("content"));
                post.setBbsType(rs.getString("bbs_type"));
                posts.add(post);
            }
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
            return null; //데이터베이스 오류
        }
    }

    /**
     * notice 게시물 한개 불러오기
     * @return
     */
    public Post getOnePost(Long id) {
        try {
            pstmt = connection.prepareStatement("select * from post where id=?");
            pstmt.setLong(1, id);
            rs = pstmt.executeQuery();
            Post post = new Post();

            if(rs.next()){
                post.setId(rs.getLong("id"));
                post.setTitle(rs.getString("title"));
                post.setUserEmail(rs.getString("user_id"));
                post.setCreatedDate(rs.getTimestamp("created_date"));
                post.setUpdatedDate(rs.getTimestamp("updated_date"));
                post.setContent(rs.getString("content"));
                post.setBbsType(rs.getString("bbs_type"));
            }
            return post;
        } catch (Exception e) {
            e.printStackTrace();
            return null; //데이터베이스 오류
        }
    }
}
