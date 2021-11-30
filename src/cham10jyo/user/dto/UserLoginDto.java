package cham10jyo.user.dto;

public class UserLoginDto {
    String password;
    String email;

    public UserLoginDto(String password, String email) {
        this.password = password;
        this.email = email;
    }


    public UserLoginDto() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
