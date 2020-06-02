package com.emit.resume.domain;

import lombok.Data;

import java.util.List;

@Data
public class CvInfo {
    //简历信息表
    //简历的存储文件名
    private String cvName;
    //简历的原始文件名
    private String originalName;

    private String ruleId;

    private String uploadId; //uuid3

    private String uploadDate;

    private String workYears; //简历摘要---工作时间

    private String post; //职位

    private List<BasicInfo> baseInfo;
}
