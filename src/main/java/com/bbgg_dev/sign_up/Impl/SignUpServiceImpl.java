package com.bbgg_dev.sign_up.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbgg_dev.sign_up.SignUpService;
import com.bbgg_dev.sign_up.SignUpVO;

@Service("SignUpService")
public class SignUpServiceImpl implements SignUpService {

    @Autowired
    private SignUpDAO signUpDAO;

    @Override
    public void insertMember(SignUpVO vo) {
        signUpDAO.insertMember(vo);
    }

    @Override
    public void deleteMember(String id) {
        signUpDAO.deleteMember(id);
    }

    @Override
    public String findId(String email) {

        return signUpDAO.findId(email);
    }

    @Override
    public String findPassword(String id) {
        return signUpDAO.findPassword(id);
    }

    @Override
    public boolean idCheck(String id) {
        return signUpDAO.idCheck(id);
    }


}
