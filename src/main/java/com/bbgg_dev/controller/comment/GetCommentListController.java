package com.bbgg_dev.controller.comment;

import com.bbgg_dev.comment.CommentVO;
import com.bbgg_dev.comment.Impl.CommentDAO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class GetCommentListController {

    @RequestMapping("/getCommentList.do")
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("댓글 목록 처리");
        ModelAndView mav = new ModelAndView();
        CommentVO vo = new CommentVO();
        CommentDAO commentDAO = new CommentDAO();

        int postId = Integer.parseInt(request.getParameter("pid"));
        vo.setPostId(postId);

        List<CommentVO> commentList = commentDAO.getCommentList(vo);

        HttpSession session = request.getSession();
        session.setAttribute("commentList", commentList);

        mav.addObject("commentList", commentList);
        mav.setViewName("/getPost.do");

        return mav;
    }
}
