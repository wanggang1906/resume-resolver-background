package com.emit.resume.dao;

import com.emit.resume.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户数据库连接层
 */
@Repository
@Mapper
public interface UserDao {
    List<User> findUsers(@Param(value = "username") String username);

    void addUser(User user);

    User findUserByUsername(String username);

    void editUser(User user);

    void delUser(Long id);

    void updatePassword(User user);

    User findUserById(Long id);

}
