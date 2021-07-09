package com.bbgg_dev.sign_up;

import java.sql.Date;

// 회원가입에 필요한 VO 클래스 (member 테이블 접근)
public class SignUpVO {
    private String id;
    private String pw;
    private String name;
    private Date birth;
    private char gender;
    private String email;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "SignUpVO{" +
                "id='" + id + '\'' +
                ", pw='" + pw + '\'' +
                ", name='" + name + '\'' +
                ", birth=" + birth +
                ", gender=" + gender +
                ", email='" + email + '\'' +
                '}';
    }
}
