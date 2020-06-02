package com.emit.resume.controller;

import com.emit.resume.domain.Menu;
import com.emit.resume.service.MenuService;
import com.emit.resume.util.MenuTreeBuilder;
import com.emit.resume.view.ResultView;
import com.github.pagehelper.PageSerializable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


/**
 * 菜单管理
 */
@Controller
@RequestMapping(value = "/api/menu")
public class MenuController {
    @Resource //j2ee的注解，用来装配bean
    private MenuService menuService;

    /**
     * 根据角色权限查询用户菜单
     */
    @PostMapping("/user/menus")
    @ResponseBody
    public ResultView findUserMenus(HttpServletRequest request) {
        Long id =1l;
        // 根据token获取用户id
        List<Menu> userMenus = menuService.findUserMenusByUserId(id);
        return new ResultView<List>(userMenus);
    }

    /**
     * 分页查询所有菜单
     */
    @PostMapping("/menus")
    @ResponseBody
    public ResultView findMenus(
            @RequestParam(required = false, value = "name") String name,
            @RequestParam(required = false, value = "parentId") Long parentId,
            @RequestParam(required = false, value = "pageNum",defaultValue="1") Integer pageNum) {

        PageSerializable<Menu> menus = menuService.selectMenusPage(name, parentId, pageNum);
        return new ResultView<PageSerializable>(menus);
    }

    /**
     * 菜单下拉框
     */
    @PostMapping("/options")
    @ResponseBody
    public ResultView findMenuOptions() {
        List<Menu> menuList = menuService.findMenuOptions();

        List<Menu> menus = new ArrayList<>();
        Menu menu = new Menu();
        menu.setId(0L);
        menu.setName("根目录");
        menu.setType(1);
        menus.add(menu);
        menus.addAll(menuList);
        return new ResultView<List>(menus);
    }

    /**
     * 添加菜单
     */
    @PostMapping("/add")
    @ResponseBody
    public ResultView addMenus(@RequestBody Menu menu) {
        menuService.addMenu(menu);
        return new ResultView();
    }

    /**
     * 修改菜单
     */
    @PostMapping("/edit")
    @ResponseBody
    public Object editMenus(@RequestBody Menu menu) {
        Menu isExistMenu = menuService.checkExistMenu(menu);
        if (isExistMenu != null) {
            ResultView resultView = new ResultView();
            resultView.setErrCode(1);
            resultView.setErrMsg("同级目录下菜单名不能重复");
            return resultView;
        }

        //修改菜单
        menuService.editMenu(menu);
        return new ResultView<>();
    }

    /**
     * 删除菜单
     */
    @PostMapping("/del")
    @ResponseBody
    public Object delMenus(@RequestParam(value = "id") Long id) {
        menuService.delMenu(id);
        return new ResultView<>();
    }

    /**
     * 修改菜单图标
     */
    @PostMapping("/icon/upd")
    @ResponseBody
    public Object updIcon(@RequestBody Menu menu) {
        menuService.updIcon(menu);
        return new ResultView<>();
    }

    /**
     * 查询所有菜单
     */
    @PostMapping("/menu/all")
    @ResponseBody
    public Object menus() {
        List<Menu> regularMenuDbs = menuService.findAllMenus();
        List<Menu> menus = MenuTreeBuilder.buildByRecursive(regularMenuDbs);
        return new ResultView<List>(menus);
    }


}