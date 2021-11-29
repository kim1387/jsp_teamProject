package cham10jyo.post.dto;

public class PostEditDto {
    private String title;
    private String content;

    public PostEditDto() {
    }

    public PostEditDto(String title, String content) {
        this.title = title;
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
}
