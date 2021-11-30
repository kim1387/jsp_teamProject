package cham10jyo.post.dto;

public class PostCreateDto {
    private String title;
    private String content;
    private String userId;
    private String bbsType;

    public PostCreateDto() {
    }

    public PostCreateDto(String title, String content, String userId, String bbsType) {
        this.title = title;
        this.content = content;
        this.userId = userId;
        this.bbsType = bbsType;
    }

    public String getBbsType() {
        return bbsType;
    }

    public void setBbsType(String bbsType) {
        this.bbsType = bbsType;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
