package com.bbgg_dev.post;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import java.util.List;

public class PostServiceClient {

    public static void main(String[] args) {

        PostDAO postDAO = new PostDAO();
        PostVO vo = new PostVO();

        vo.setPostId(10);
        vo.setPostTitle("제목 123");
        vo.setPostAuthor("작성자 123");
        vo.setPostText("글 123의 내용");
        vo.setGuName("구123");
        vo.setDongName("동123");
        postDAO.insertPost(vo);
        List<PostVO> postList = postDAO.getPostList(vo);
        for(PostVO post : postList){
            System.out.println("---->"+post.toString());
        }

        vo.setPostAuthor("mingiseo");
        List<PostVO> postListbyAuthor = postDAO.getPostByAuthor(vo);
        for(PostVO pauth : postListbyAuthor){
            System.out.println("---->"+pauth.toString());
        }
    }
}
