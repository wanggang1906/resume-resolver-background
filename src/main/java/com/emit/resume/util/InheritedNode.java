package com.emit.resume.util;

import java.util.List;

/**
 * 树形结构
 */
public interface InheritedNode<T> {
    boolean isChildFrom(T node);
    boolean isBrother(T node);
    void addChildNode(T node);
    List<T> getChildNodes();
}
