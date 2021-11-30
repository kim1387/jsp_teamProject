package cham10jyo.user.domain;

public class User {
    private String password; // 이메일과 비밀 번호를 통해 로그인
    private String name;
    private String gender;
    private String email;
    private String authority;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
