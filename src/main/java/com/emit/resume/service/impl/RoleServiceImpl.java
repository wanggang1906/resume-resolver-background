package com.emit.resume.service.impl;

import com.emit.resume.dao.RoleDao;
import com.emit.resume.domain.Role;
import com.emit.resume.service.RoleService;
import com.emit.resume.util.Constant;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageSerializable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 角色管理实现类
 */
@Service("roleManageService")
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;

    /**
     * 分页查询所有菜单
     */
    @Override
    public PageSerializable<Role> findRoles(String name, Integer pageNum) {
        PageHelper.startPage(pageNum, Constant.CONST_PAGE_COUNT);
        List<Role> roles = roleDao.findRoles(name);
        return new PageSerializable<>(roles);
    }

    /**
     *增加菜单信息
     */
    @Override
    public void addRole(Role role) { roleDao.addRole(role);}

    /**
     * 编辑菜单信息
     */
    @Override
    public void editRole(Role role) { roleDao.updRole(role);}

    /**
     *删除菜单信息
     */
    @Override
    public void delRole(Long id) { roleDao.delRole(id);}

    @Override
    public Role findRoleById(Long roleId) {
        return roleDao.findRoleById(roleId);
    }

    @Override
    public List<Role> findAllRoles() {
        return roleDao.findAllRoles();
    }


}
