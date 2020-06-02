package com.emit.resume.controller;


import com.emit.resume.domain.Role;
import com.emit.resume.service.RoleService;
import com.emit.resume.view.ResultView;
import com.github.pagehelper.PageSerializable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = ("/api/role"))
public class RoleController {

    @Resource
    private RoleService roleService;

    /**
     * 根据用户名称查询角色管理菜单
     */
    @PostMapping("/roles")
    @ResponseBody
    public ResultView findRoles(
            @RequestParam(required = false, value = "name") String name,
            @RequestParam(required = false, value = "pageNum", defaultValue = "1") Integer pageNum) {
        PageSerializable<Role> roles = roleService.findRoles(name, pageNum);
        return new ResultView<PageSerializable>(roles);
    }

    /**
     * 添加角色信息
     */
    @PostMapping("/add")
    @ResponseBody
    public ResultView addRole(@RequestBody Role role){
        roleService.addRole(role);
        return new ResultView<>();
    }

    /**
     * 编辑角色信息
     */
    @PostMapping("/edit")
    @ResponseBody
    public ResultView editRole(@RequestBody Role role){
        roleService.editRole(role);
        return new ResultView<>();
    }

    /**
     * 删除菜单信息
     */
    @PostMapping("/del")
    @ResponseBody
    public Object delRole(@RequestParam(value = "id") Long id){
        roleService.delRole(id);
        return new ResultView<>();
    }

}
