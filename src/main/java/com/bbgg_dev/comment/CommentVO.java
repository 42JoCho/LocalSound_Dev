package com.bbgg_dev.comment;

import java.sql.Date;

public class CommentVO {
    private int postId;
    private int commentId;
    private Date commentDate;
    private String commentAuthor;
    private String commentText;

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public Date getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(Date commentDate) {
        this.commentDate = commentDate;
    }

    public String getCommentAuthor() {
        return commentAuthor;
    }

    public void setCommentAuthor(String commentAuthor) {
        this.commentAuthor = commentAuthor;
    }

    public String getCommentText() {
        return commentText;
    }

    public void setCommentText(String commentText) {
        this.commentText = commentText;
    }

    @Override
    public String toString() {
        return "CommentVO{" +
                "postId=" + postId +
                ", commentId=" + commentId +
                ", commentDate=" + commentDate +
                ", commentAuthor='" + commentAuthor + '\'' +
                ", commentText='" + commentText + '\'' +
                '}';
    }
}
