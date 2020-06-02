package com.emit.resume.domain;

import lombok.Data;

@Data
public class CvKeywordCopy {
    //对应rule_version_copy表
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

    private String ruleKeyId; //关键字id

    private String type;

    private String date; //规则修改时间

    private String ruleUploadCount; //规则修改次数
}
