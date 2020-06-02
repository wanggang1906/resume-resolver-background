package com.emit.resume.service.impl;

import com.emit.resume.domain.Resource;
import com.emit.resume.service.ResourceService;
import com.github.pagehelper.PageSerializable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("resourceService")
//数据库操作实现类
public class ResourceServiceImpl implements ResourceService {

    @Override
    public PageSerializable<Resource> findResources(String name, Integer pageNum) {
        return null;
    }

    @Override
    public void addResource(Resource resource) {

    }

    @Override
    public void editResource(Resource resource) {

    }

    @Override
    public void delResource(Long id) {

    }

    @Override
    public List<Resource> findAllResources() {
        return null;
    }
}
