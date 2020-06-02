package com.emit.resume.domain;

import lombok.Data;

@Data
public class CvKeyword {
    //对应rule_version表
    private int id;
    //模块名
    private String modelName;
    //值
    private String modelValue;
    //版本号= 年月日+userId+ 3个随机数
    //userId + 32位随机数
    private String versionNumber;
    //当前用户的id
    private String userId;

    //private List<BasicInfo> basicInfo;

    //private String attributeName; //属性值

    private String ruleKeyId; //关键字id
    private String type;

    private int sorder2;
}
