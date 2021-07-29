package com.bbgg_dev.controller.post;

import com.bbgg_dev.comment.CommentVO;
import com.bbgg_dev.comment.Impl.CommentDAO;
import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.jetbrains.annotations.NotNull;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class IncreaseCountController {

    @RequestMapping(value = "/IncreaseViewCount.do")
    public ModelAndView IncreaseViewCount(HttpServletRequest request){
        PostVO vo = new PostVO();
        PostDAO postDAO = new PostDAO();
        CommentDAO commentDAO = new CommentDAO();
        CommentVO commentVO = new CommentVO();

        int pid = Integer.parseInt(request.getParameter("pid"));
        vo.setPostId(pid);
        postDAO.updateViewCount(vo);
        return getPostComment(vo, postDAO, commentDAO, commentVO);
    }

    @RequestMapping(value = "/IncreaseRecoCount.do")
    public ModelAndView IncreaseRecoCount(HttpServletRequest request){
        PostVO vo = new PostVO();
        PostDAO postDAO = new PostDAO();
        CommentDAO commentDAO = new CommentDAO();
        CommentVO commentVO = new CommentVO();

        int pid = Integer.parseInt(request.getParameter("pid"));
        vo.setPostId(pid);
        postDAO.updateRecoCount(vo);
        return getPostComment(vo, postDAO, commentDAO, commentVO);
    }

    @NotNull
    private ModelAndView getPostComment(PostVO vo, PostDAO postDAO, CommentDAO commentDAO, CommentVO commentVO) {
        PostVO post = postDAO.getPost(vo);
        List<CommentVO> commentList = commentDAO.getCommentList(commentVO);
        ModelAndView mav = new ModelAndView();
        mav.addObject("post", post);
        mav.addObject("commentList", commentList);
        mav.setViewName("/detail.jsp");
        return mav;
    }
}
