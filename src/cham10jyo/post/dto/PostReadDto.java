package cham10jyo.post.dto;

import java.sql.Timestamp;
import java.util.Date;

public class PostReadDto {
    private Long id;
    private String title;
    private String userEmail;
    private Timestamp createdDate;
    private Timestamp updatedDate;
    private String content;
    private String bbsType;


    public String getBbsType() {
        return bbsType;
    }

    public void setBbsType(String bbsType) {
        this.bbsType = bbsType;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public Timestamp getUpdatedDate() {
        return updatedDate;
    }

    public void setUpdatedDate(Timestamp updatedDate) {
        this.updatedDate = updatedDate;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
