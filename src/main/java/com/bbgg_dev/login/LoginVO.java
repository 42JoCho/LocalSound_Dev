package com.bbgg_dev.login;

import java.sql.Date;

public class LoginVO {
    private String memberId;
    private String memberPassword;
    private String memberName;
    private char memberGender;
    private Date memberBirth;
    private String memeberEmail;

    public char getMemberGender() {
        return memberGender;
    }

    public void setMemberGender(char memberGender) {
        this.memberGender = memberGender;
    }

    public Date getMemberBirth() {
        return memberBirth;
    }

    public void setMemberBirth(Date memberBirth) {
        this.memberBirth = memberBirth;
    }

    public String getMemeberEmail() {
        return memeberEmail;
    }

    public void setMemeberEmail(String memeberEmail) {
        this.memeberEmail = memeberEmail;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getMemberPassword() {
        return memberPassword;
    }

    public void setMemberPassword(String memberPassword) {
        this.memberPassword = memberPassword;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    @Override
    public String toString() {
        return "LoginVO{" +
                "memberId='" + memberId + '\'' +
                ", memberPassword='" + memberPassword + '\'' +
                ", memberName='" + memberName + '\'' +
                ", memberGender=" + memberGender +
                ", memberBirth=" + memberBirth +
                ", memeberEmail='" + memeberEmail + '\'' +
                '}';
    }
}
