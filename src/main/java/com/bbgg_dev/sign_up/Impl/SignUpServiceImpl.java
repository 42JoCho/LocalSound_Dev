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
    public void deleteMember(SignUpVO vo) {
        signUpDAO.deleteMember(vo);
    }

    @Override
    public SignUpVO findId(SignUpVO vo) {
        return signUpDAO.findId(vo);
    }

    @Override
    public SignUpVO findPassword(SignUpVO vo) {
        return signUpDAO.findPassword(vo);
    }

    @Override
    public SignUpVO idCheck(SignUpVO vo) {
        return signUpDAO.idCheck(vo);
    }


}
