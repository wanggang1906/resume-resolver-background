package com.emit.resume.dao;

import com.emit.resume.domain.UserInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author zhangchao
 * @date 2019-04-21
 */
@Repository
@Mapper
public interface UserInfoDao {
    List<UserInfo> findAllUsers(@Param("keyword") String keyword);

    UserInfo findUserByEmpId(@Param("empId") String empId);
    UserInfo findUserInfoById(@Param("id") Long id);
}
