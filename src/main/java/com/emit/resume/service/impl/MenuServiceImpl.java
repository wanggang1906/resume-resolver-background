package com.emit.resume.service.impl;

import com.emit.resume.dao.MenuDao;
import com.emit.resume.dao.RoleDao;
import com.emit.resume.dao.UserDao;
import com.emit.resume.domain.Menu;
import com.emit.resume.domain.Role;
import com.emit.resume.domain.User;
import com.emit.resume.service.MenuService;
import com.emit.resume.util.Constant;
import com.emit.resume.util.MenuTreeUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageSerializable;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * 菜单管理实现类
 */
@Service("menuService")
public class MenuServiceImpl implements MenuService {

    @javax.annotation.Resource
    private MenuDao menuDao;
    @javax.annotation.Resource
    private UserDao userDao;
    @javax.annotation.Resource
    private RoleDao roleDao;

    /**
     * 查询所有菜单信息
     */
    @Override
    public List<Menu> findAllMenus() {
        return menuDao.findAllMenus();
    }

    /**
     * 分页查询所有菜单
     */
    @Override
    public PageSerializable<Menu> selectMenusPage(String name, Long parentId, Integer pageNum) {
        PageHelper.startPage(pageNum, Constant.CONST_PAGE_COUNT);
        Map<String,Object> condition = new HashMap<>();
        condition.put("name",name);
        condition.put("parentId",parentId);
        List<Menu> menuList = menuDao.findMenus(condition);
        return new PageSerializable<>(menuList);
    }

    /**
     * 菜单下拉框
     */
    @Override
    public List<Menu> findMenuOptions() {
        return menuDao.findMenuOptions();
    }

    /**
     * 添加菜单
     */
    @Override
    public void addMenu(Menu menu) {
        menuDao.addMenu(menu);
    }

    /**
     * 修改菜单
     */
    @Override
    public void editMenu(Menu menu) {
        menuDao.updMenu(menu);
    }

    /**
     * 同一菜单下名称重复性校验
     */
    @Override
    public Menu checkExistMenu(Menu menu) {
        return menuDao.checkExistMenu(menu);
    }

    /**
     * 删除菜单
     */
    @Override
    public void delMenu(Long id) {
        menuDao.delMenu(id);
    }

    /**
     * 修改菜单图标
     */
    @Override
    public void updIcon(Menu menu) {
        menuDao.updIcon(menu);
    }

    @Override
    public List<Menu> findUserMenusByUserId(Long id) {
        //查询登录用户信息
        User user = userDao.findUserById(id);

        //获取用户具有的角色权限
        //分割数组后查询各角色菜单权限
        if(StringUtils.isNotBlank(user.getRoles())){
            List<Long> roleIds = Stream.of(user.getRoles().split(Constant.CONST_SEP)).collect(Collectors.toList())
                    .stream().map(Long::parseLong).collect(Collectors.toList());
            List<Role> userRoles = roleDao.findRolesByRoleIds(roleIds);
            String menuIdsStr = userRoles.stream()
                                    .filter(role->role.getMenuIds()!=null && StringUtils.isNotBlank(role.getMenuIds()))
                                    .map(Role::getMenuIds).collect(Collectors.joining(","));
            List<Long> menuIds = Stream.of(menuIdsStr.split(Constant.CONST_SEP)).collect(Collectors.toList())
                    .stream().map(Long::parseLong).collect(Collectors.toList());

            boolean bool = false;
            for(Role role:userRoles){
                if(role.getId()==1){
                    bool = true;
                }
            }

            if(bool){
                List<Menu> userMenus = menuDao.findAllMenus();
                //list=》树
                if(userMenus!=null && userMenus.size()>0){
                    List<Menu> rootList = userMenus.stream().filter(menu -> new Long(0L).equals(menu.getParentId()))
                            .collect(Collectors.toList());
                    MenuTreeUtil utils =  new MenuTreeUtil(rootList, userMenus);
                    return utils.getTree();
                }
            }
            if(menuIds.size() > 0){
                List<Menu> userMenus = menuDao.findMenusByMenuIds(menuIds);

                //list=》树
                if(userMenus!=null && userMenus.size()>0){
                    List<Menu> rootList = userMenus.stream().filter(menu -> new Long(0L).equals(menu.getParentId()))
                            .collect(Collectors.toList());
                    MenuTreeUtil utils =  new MenuTreeUtil(rootList, userMenus);
                    return utils.getTree();
                }

            }
            return null;
        }else{
            return null;
        }
    }
}
