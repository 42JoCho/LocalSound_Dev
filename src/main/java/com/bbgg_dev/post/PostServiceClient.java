package com.bbgg_dev.post;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import java.util.List;

public class PostServiceClient {

    public static void main(String[] args) {

        PostDAO postDAO = new PostDAO();
        PostVO vo = new PostVO();

        vo.setPostTitle("제목 2");
        vo.setPostAuthor("작성자 2");
        vo.setPostText("글 2의 내용");
        vo.setGuName("구이름");
        vo.setDongName("동이름");
        postDAO.insertPost(vo);

        List<PostVO> postList = postDAO.getPostList(vo);
        for(PostVO post : postList){
            System.out.println("---->"+post.toString());
        }
    }
}
