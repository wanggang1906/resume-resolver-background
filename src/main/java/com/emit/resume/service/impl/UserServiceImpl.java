package com.emit.resume.service.impl;

import com.emit.resume.dao.UserDao;
import com.emit.resume.dao.UserInfoDao;
import com.emit.resume.domain.User;
import com.emit.resume.domain.UserInfo;
import com.emit.resume.service.UserService;
import com.emit.resume.util.Constant;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageSerializable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户管理实现类
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private UserInfoDao userInfoDao;

    /**
     * 查询单个用户信息
     */
    @Override
    public User findUserById(Long id) {
        return userDao.findUserById(id);
    }

    @Override
    public PageSerializable<User> findUsers(String username, Integer pageNum) {
        PageHelper.startPage(pageNum, Constant.CONST_PAGE_COUNT);
        List<User> userList = userDao.findUsers(username);
        return new PageSerializable<User>(userList);
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public User findUserByUsername(String username) {
        return userDao.findUserByUsername(username);
    }

    @Override
    public void editUser(User user) {
        userDao.editUser(user);
    }

    @Override
    public void delUser(Long id) {
        userDao.delUser(id);
    }

    @Override
    public void updatePassword(User user) {
        userDao.updatePassword(user);
    }

    @Override
    public UserInfo findUserInfoById(Long id) {
        return userInfoDao.findUserInfoById(id);
    }

}
