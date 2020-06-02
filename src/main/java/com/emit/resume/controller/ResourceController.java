package com.emit.resume.controller;


import com.emit.resume.domain.Resource;
import com.emit.resume.service.ResourceService;
import com.emit.resume.view.ResultView;
import com.github.pagehelper.PageSerializable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value = "/api/resource")
public class ResourceController {

    @javax.annotation.Resource
    private ResourceService resourceService;

    /**
     * 根据资源名称查询用户菜单
     */
    @PostMapping("/resources")
    @ResponseBody
    public Object findResources(
            @RequestParam(required = false, value = "name") String name,
            @RequestParam(required = false, value = "pageNum",defaultValue = "1") Integer pageNum) {
        PageSerializable<Resource> resources = resourceService.findResources(name,pageNum);
        return new ResultView<PageSerializable>(resources);
    }

    /**
     *添加菜单信息
     */
    @PostMapping("/add")
    @ResponseBody
    public Object addResource(@RequestBody Resource resource){
        resourceService.addResource(resource);
        return new ResultView<>();
    }

    /**
     * 编辑菜单信息
     */
    @PostMapping("/edit")
    @ResponseBody
    public Object editResource(@RequestBody Resource resource){
        resourceService.editResource(resource);
        return new ResultView<>();
    }

    /**
     * 删除菜单信息
     */
    @PostMapping("/del")
    @ResponseBody
    public Object delResource(@RequestParam(value = "id") Long id) {
        resourceService.delResource(id);
        return new ResultView<>();
    }
}
