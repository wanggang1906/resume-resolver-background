package com.emit.resume.domain;

import lombok.Data;

import java.util.List;

/**
 * 菜单
 */
@Data
public class Menu {
    /** 主键 */
    private Long id;
    /** 菜单名 */
    private String name;
    /** 类型 */
    private Integer type;
    /** 父菜单主键 */
    private Long parentId;
    /** 地址 */
    private String url;
    /** 图标 */
    private String icon;
    /** 顺序 */
    private String order;
    /** 子菜单 */
    private List<Menu> children;
}
