package com.emit.resume.service;

import com.emit.resume.domain.Menu;
import com.github.pagehelper.PageSerializable;

import java.util.List;

/**
 * 菜单管理接口
 */
public interface MenuService {

    /**
     * 查询所有菜单信息
     */
    List<Menu> findAllMenus();

    /**
     * 分页查询所有菜单
     */
    PageSerializable<Menu> selectMenusPage(String name, Long parentId, Integer pageNum);

    /**
     * 菜单下拉框
     */
    List<Menu> findMenuOptions();

    /**
     * 添加菜单
     */
    void addMenu(Menu menu);

    /**
     * 修改菜单
     */
    void editMenu(Menu menu);

    /**
     * 同一菜单下名称重复性校验
     */
    Menu checkExistMenu(Menu menu);

    /**
     * 删除菜单
     */
    void delMenu(Long id);

    /**
     * 修改菜单图标
     */
    void updIcon(Menu menu);

    List<Menu> findUserMenusByUserId(Long id);
}
