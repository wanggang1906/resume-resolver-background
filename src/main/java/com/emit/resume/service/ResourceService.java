package com.emit.resume.service;

import com.emit.resume.domain.Resource;
import com.github.pagehelper.PageSerializable;

import java.util.List;

/**
 * 用户管理接口
 */
public interface ResourceService {

    /**
     * 分页查询所有菜单
     * @param name
     * @param pageNum
     * @return
     */
    PageSerializable<Resource> findResources(String name, Integer pageNum);

    /**
     * 添加菜单信息
     */
    void addResource(Resource resource);

    /**
     * 编辑菜单信息
     */
    void editResource(Resource resource);

    /**
     *删除菜单信息
     */

    void delResource(Long id);

    List<Resource> findAllResources();
}
