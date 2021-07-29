package com.bbgg_dev.controller.post;

import com.bbgg_dev.post.Impl.PostDAO;
import com.bbgg_dev.post.PostVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IncreaseCountController {

    @RequestMapping(value = "/IncreaseViewCount.do")
    public void IncreaseViewCount(HttpServletRequest request){
        PostVO vo = new PostVO();
        PostDAO postDAO = new PostDAO();

        int pid = Integer.parseInt(request.getParameter("pid"));
        vo.setPostId(pid);
        postDAO.updateViewCount(vo);
    }

    @RequestMapping(value = "/IncreaseRecoCount.do")
    public void IncreaseRecoCount(HttpServletRequest request){
        PostVO vo = new PostVO();
        PostDAO postDAO = new PostDAO();

        int pid = Integer.parseInt(request.getParameter("pid"));
        vo.setPostId(pid);
        postDAO.updateRecoCount(vo);
    }
}
