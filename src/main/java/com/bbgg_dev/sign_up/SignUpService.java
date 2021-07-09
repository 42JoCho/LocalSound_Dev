package com.bbgg_dev.sign_up;

public interface SignUpService {
    void insertMember(SignUpVO vo);

    void deleteMember(String id);

    String findId(String email);

    String findPassword(String id);

    boolean idCheck(String id);
}
