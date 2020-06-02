package com.emit.resume.util;

import com.emit.resume.domain.Menu;

import java.util.ArrayList;
import java.util.List;

/**
 * list转成树
 */
public class MenuTreeBuilder {
    /**
     * 使用递归方法建树
     */
    public static List<Menu> buildByRecursive(List<Menu> menus) {
        List<Menu> trees = new ArrayList<>();
        for (Menu menu : menus) {
            if ("0".equals(String.valueOf(menu.getParentId()))) {
                findChildren(menu, menus);
                trees.add(menu);
            }
        }
        return trees;
    }

    /**
     * 递归查找子节点
     */
    private static void findChildren(Menu menu, List<Menu> menus) {
        for (Menu it : menus) {
            if (menu.getId().equals(it.getParentId())) {
                if (menu.getChildren() == null) {
                    menu.setChildren(new ArrayList<>());
                }
                menu.getChildren().add(it);
            }
        }
    }
}