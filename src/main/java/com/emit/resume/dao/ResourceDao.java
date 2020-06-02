package com.emit.resume.dao;

import com.emit.resume.domain.Resource;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 角色数据库连接层
 */
@Repository
@Mapper
public interface ResourceDao {

    /**
     * 通过角色id查询单个用户角色
     */
    List findResources(@Param(value = "name") String name);

    void addResource(Resource resource);

    void editResource(Resource resource);

    void delResource(Long id);

    List<Resource> findAllResources();
}
