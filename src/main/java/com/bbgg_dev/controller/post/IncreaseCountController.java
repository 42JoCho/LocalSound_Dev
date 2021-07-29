package com.bbgg_dev.controller.post;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IncreaseCountController {

    @RequestMapping(value = "/IncreaseViewCount.do")
    public ModelAndView IncreaseViewCount(HttpServletRequest request){
        PostVO vo = new PostVO();
        PostDAO postDAO = new PostDAO();

        int pid = Integer.parseInt(request.getParameter("pid"));
        vo.setPostId(pid);
        postDAO.updateViewCount(vo);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/detail.jsp");
        return mav;
    }

    @RequestMapping(value = "/IncreaseRecoCount.do")
    public ModelAndView IncreaseRecoCount(HttpServletRequest request){
        PostVO vo = new PostVO();
        PostDAO postDAO = new PostDAO();

        int pid = Integer.parseInt(request.getParameter("pid"));
        vo.setPostId(pid);
        postDAO.updateRecoCount(vo);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/detail.jsp");
        return mav;
    }
}
