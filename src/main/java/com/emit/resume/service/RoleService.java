package com.emit.resume.service;

import com.emit.resume.domain.Role;
import com.github.pagehelper.PageSerializable;

import java.util.List;

/**
 * 用户管理接口
 */
public interface RoleService {

    /**
     *分页查询所有菜单
     */
    PageSerializable<Role> findRoles(String name, Integer pageNum);

    /**
     * 添加菜单信息
     */
    void addRole(Role role);

    /**
     *编辑菜单信息
     */
    void editRole(Role role);

    /**
     *删除菜单信息
     */
    void delRole(Long id);

    /**
     * 根据id查询角色信息
     * @param roleId
     * @return
     */
    Role findRoleById(Long roleId);

    List<Role> findAllRoles();
}
