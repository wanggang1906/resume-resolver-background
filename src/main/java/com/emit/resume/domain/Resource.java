package com.emit.resume.domain;

import lombok.Data;

import java.util.List;

@Data
public class Resource {
    /**主键*/
    private Long id;
    /**资源名*/
    private String name;
    /**顺序*/
    private String order;
    /**状态*/
    private String status;
    /**地址*/
    private String url;
    /** 子菜单 */
    private List<Resource> children;
}
