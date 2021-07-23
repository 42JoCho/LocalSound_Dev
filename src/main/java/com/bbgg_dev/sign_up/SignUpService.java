package com.bbgg_dev.sign_up;

public interface SignUpService {
    void insertMember(SignUpVO vo);

    void deleteMember(SignUpVO vo);

    SignUpVO findId(SignUpVO vo);

    SignUpVO findPassword(SignUpVO vo);

    SignUpVO idCheck(SignUpVO vo);
}
