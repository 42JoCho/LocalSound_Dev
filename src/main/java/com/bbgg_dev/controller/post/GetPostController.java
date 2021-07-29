package com.bbgg_dev.controller.post;

import com.bbgg_dev.comment.CommentVO;
import com.bbgg_dev.comment.Impl.CommentDAO;
import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Objects;


@Controller
public class GetPostController {

    @RequestMapping(value = "/getPost.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {

        // 1. 상세 조회할 게시글 번호 추출
        System.out.println("글 상세 조회 처리");
        String pid = request.getParameter("pid");
        HttpSession session = request.getSession();
        // 2. DB 연동 처리
        PostVO vo = new PostVO();

        if(!Objects.equals(session.getAttribute("pid"), pid)){
            vo.setPostId(Integer.parseInt(pid));
            session.setAttribute("pid", Integer.parseInt(pid));
        }else{
            vo.setPostId((int) session.getAttribute("pid"));
        }
        CommentDAO commentDAO = new CommentDAO();
        CommentVO commentVO = new CommentVO();

        PostDAO postDAO = new PostDAO();
        postDAO.updateViewCount(vo);
        PostVO post = postDAO.getPost(vo);
        int postId = post.getPostId();
        commentVO.setPostId(postId);
        System.out.println(post);
        List<CommentVO> commentList = commentDAO.getCommentList(commentVO);

        // 3. 결과를 세션에 저장하고 상세 화면 리턴
        ModelAndView mav = new ModelAndView();
        mav.addObject("commentList", commentList);
        mav.addObject("post", post);
        mav.setViewName("/detail.jsp");

        return mav;
    }
}
