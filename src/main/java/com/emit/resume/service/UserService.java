package com.emit.resume.service;

import com.emit.resume.domain.User;
import com.emit.resume.domain.UserInfo;
import com.github.pagehelper.PageSerializable;

/**
 * 用户管理接口
 */
public interface UserService {

    /**
     * 查询单个用户
     * @return
     */
    User findUserById(Long id);

    PageSerializable<User> findUsers(String username, Integer pageNum);

    void addUser(User user);

    User findUserByUsername(String username);

    void editUser(User user);

    void delUser(Long id);

    void updatePassword(User user);
    UserInfo findUserInfoById(Long id);
}
