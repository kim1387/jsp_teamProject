package cham10jyo.post.dao;

import cham10jyo.util.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

public class PostDao {
    private Connection connection;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public PostDao() {
        connection = DbUtil.getConnection();
    }

    public boolean write(String title, String userid, String content) {
        String SQL = "insert into post values(?, ?, ?, ?, ?, ?)";
        try {
            java.sql.Date today = (java.sql.Date) new Date();
            pstmt = connection.prepareStatement(SQL);
            pstmt.setString(1, title);
            pstmt.setString(2, userid);
            pstmt.setDate(3, today);
            pstmt.setDate(4, today);
            pstmt.setString(5, content);
            pstmt.setInt(6, 0); // 0 - false, 1 - true 삭제 여부
            pstmt.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false; //데이터베이스 오류
        }
    }

}
