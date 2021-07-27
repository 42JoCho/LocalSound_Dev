package com.bbgg_dev.post;

import java.sql.Date;

public class PostVO {
    private int postId;
    private String postTitle;
    private String postAuthor;
    private Date postDate;
    private int postViewCount;
    private int postRecoCount;
    private String postText;
    private String guName;
    private String dongName;
    private String searchKeyword;
    private String PostMainCategory;
    private String PostSubCategory;

    public int getPostRecoCount() {
        return postRecoCount;
    }

    public void setPostRecoCount(int postRecoCount) {
        this.postRecoCount = postRecoCount;
    }

    public String getPostMainCategory() {
        return PostMainCategory;
    }

    public void setPostMainCategory(String postMainCategory) {
        PostMainCategory = postMainCategory;
    }

    public String getPostSubCategory() {
        return PostSubCategory;
    }

    public void setPostSubCategory(String postSubCategory) {
        PostSubCategory = postSubCategory;
    }

    public String getSearchKeyword() {
        return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostAuthor() {
        return postAuthor;
    }

    public void setPostAuthor(String postAuthor) {
        this.postAuthor = postAuthor;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public int getPostViewCount() {
        return postViewCount;
    }

    public void setPostViewCount(int postViewCount) {
        this.postViewCount = postViewCount;
    }

    public String getPostText() {
        return postText;
    }

    public void setPostText(String postText) {
        this.postText = postText;
    }

    public String getGuName() {
        return guName;
    }

    public void setGuName(String guName) {
        this.guName = guName;
    }

    public String getDongName() {
        return dongName;
    }

    public void setDongName(String dongName) {
        this.dongName = dongName;
    }

    @Override
    public String toString() {
        return "PostVO{" +
                "postId=" + postId +
                ", postTitle='" + postTitle + '\'' +
                ", postAuthor='" + postAuthor + '\'' +
                ", postDate=" + postDate +
                ", postViewCount=" + postViewCount +
                ", postRecoCount=" + postRecoCount +
                ", postText='" + postText + '\'' +
                ", guName='" + guName + '\'' +
                ", dongName='" + dongName + '\'' +
                ", searchKeyword='" + searchKeyword + '\'' +
                ", PostMainCategory='" + PostMainCategory + '\'' +
                ", PostSubCategory='" + PostSubCategory + '\'' +
                '}';
    }
}
