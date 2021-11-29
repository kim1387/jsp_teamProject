package cham10jyo.post.dto;

public class AddDto {
    private String title;
    private String content;
    private String userId;

    public AddDto() {
    }

    public AddDto(String title, String userId, String content) {
        this.title = title;
        this.userId = userId;
        this.content = content;
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
