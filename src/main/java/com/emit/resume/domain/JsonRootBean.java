package com.emit.resume.domain;

/**
 * Copyright 2019 bejson.com
 */
import lombok.Data;

import java.util.List;

/**
 * Auto-generated: 2019-06-17 14:54:53
 *
 * @author bejson.com (i@bejson.com)
 * @website http://www.bejson.com/java2pojo/
 */

//前端传值-实体类
    @Data
public class JsonRootBean {

    //模块名是字符串，字段名是字符串数组
    private String modelName;
    private List<Field> fieldName;

    private List<Attribute> attributeName; //属性列表 ---不一定有
    private String id;




}