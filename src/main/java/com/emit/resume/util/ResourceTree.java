package com.emit.resume.util;

import java.util.ArrayList;
import java.util.List;

/**
 * 资源树
 */
public class ResourceTree implements InheritedNode<ResourceTree> {
    private String id;
    private String name;
    private Integer type;
    private String parentId;
    private String url;
    private String icon;
    private String order;
    private List<ResourceTree> children;

    public ResourceTree() {
    }

    public ResourceTree(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public ResourceTree(String id, String name, String parentId) {
        this.id = id;
        this.name = name;
        this.parentId = parentId;
    }

    public ResourceTree(String id, String name, ResourceTree parent) {
        this.id = id;
        this.parentId = parent.getId();
        this.name = name;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<ResourceTree> getChildren() {
        return children;
    }

    public void setChildren(List<ResourceTree> children) {
        this.children = children;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    @Override
    public boolean isChildFrom(ResourceTree node) {
        return this.parentId.equals(node.getId());
    }

    @Override
    public boolean isBrother(ResourceTree node) {
        return this.parentId.equals(((ResourceTree) node).getParentId());
    }

    @Override
    public void addChildNode(ResourceTree node) {
        if (children == null) {
            children = new ArrayList<ResourceTree>();
        }
        children.add(node);
    }

    @Override
    public List<ResourceTree> getChildNodes() {
        return children;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

}
