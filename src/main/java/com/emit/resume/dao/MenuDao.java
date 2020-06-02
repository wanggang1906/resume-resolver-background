package com.emit.resume.dao;

import com.emit.resume.domain.Menu;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 菜單数据接口
 *
 */
@Repository
@Mapper
public interface MenuDao {

    /**
     * 查询所有菜单信息
     */
    List<Menu> findAllMenus();
    /**
     * 分页查询所有菜单
     */
    List<Menu> findMenus(Map condition);

    /**
     * 菜单下拉框
     */
    List<Menu> findMenuOptions();

    /**
     * 添加菜单
     */
    void addMenu(Menu menu);

    /**
     * 更新菜单
     */
    void updMenu(Menu menu);

    /**
     * 同一菜单下名称重复性校验
     */
    Menu checkExistMenu(Menu menu);

    /**
     * 删除菜单
     * @param id
     */
    void delMenu(Long id);

    /**
     * 修改菜单图标
     */
    void updIcon(Menu menu);

    List<Menu> findMenusByMenuIds(List<Long> menuIds);

    //List<Menu> findUserMenusByUserId(Long id);
}
