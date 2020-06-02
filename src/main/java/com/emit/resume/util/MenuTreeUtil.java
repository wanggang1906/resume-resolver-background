package com.emit.resume.util;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.emit.resume.domain.Menu;

import java.util.List;
import java.util.Map;

/**
 * 树结构处理类
 */
public class MenuTreeUtil {
    private List<Menu> rootList; //根节点对象存放到这里

    private List<Menu> bodyList; //其他节点存放到这里，可以包含根节点

    public MenuTreeUtil(List<Menu> rootList, List<Menu> bodyList) {
        this.rootList = rootList;
        this.bodyList = bodyList;
    }

    public List<Menu> getTree(){   //调用的方法入口
        if(bodyList != null && !bodyList.isEmpty()){
            //声明一个map，用来过滤已操作过的数据
            Map<Long,Long> map = Maps.newHashMapWithExpectedSize(bodyList.size());
            rootList.forEach(beanTree -> getChild(beanTree,map));
            return rootList;
        }
        return null;
    }


    private void getChild(Menu beanTree, Map<Long, Long> map){
        List<Menu> childList = Lists.newArrayList();
        bodyList.stream()
                .filter(c -> !map.containsKey(c.getId()))
                .filter(c ->c.getParentId().equals(beanTree.getId()))
                .forEach(c ->{
                    map.put(c.getId(),c.getParentId());
                    getChild(c,map);
                    childList.add(c);
                });
        beanTree.setChildren(childList);
    }
}
