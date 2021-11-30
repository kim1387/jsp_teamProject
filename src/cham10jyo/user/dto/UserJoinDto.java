package cham10jyo.user.dto;

public class UserJoinDto {
    String password;
    String name;
    String gender;
    String email;
    String authority;

    public UserJoinDto() {
    }

    public UserJoinDto(String password, String name, String gender, String email, String authority) {
        this.password = password;
        this.name = name;
        this.gender = gender;
        this.email = email;
        this.authority = authority;
    }

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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }
}
