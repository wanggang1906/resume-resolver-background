package com.emit.resume.domain;

import lombok.Data;

import java.io.Serializable;

/**
 * 角色
 */
@Data
public class Role implements Serializable {
    /** 主键 */
    private Long id;
    /** 角色拥有资源 */
    private String resourceIds;
    /** 关键字 */
    private String key;
    /** 角色名 */
    private String name;
    /** 角色拥有菜单 */
    private String menuIds;
}
