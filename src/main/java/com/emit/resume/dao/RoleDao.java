package com.emit.resume.dao;

import com.emit.resume.domain.Role;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 角色数据库连接层
 */
@Repository
@Mapper
public interface RoleDao {

    /**
     * 通过角色id查询单个用户角色
     */
    Role findRoleById(Long id);
    /**
     * 分页查询所有角色
     */
    List findRoles(@Param(value = "name") String name);

    /**
     *增加角色信息
     */
    void addRole(Role role);


    /**
     *编辑角色信息
     */
    void updRole(Role role);

    /**
     *删除角色信息
     */
    void delRole(Long id);

    List<Role> findAllRoles();

    List<Role> findRolesByRoleIds(List<Long> roleIds);
}
