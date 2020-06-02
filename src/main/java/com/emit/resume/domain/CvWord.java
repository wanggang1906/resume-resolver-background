package com.emit.resume.domain;

import lombok.Data;

@Data
public class CvWord {
    /*
    private String id;
    private String cvCode;
    private String name;
    private String value;
     */
    //简历实际内容表
    //简历解析id，是cv_info的id
    private int cvResolveId;
    //简历模块名
    private String modelName;
    //简历的模块下内容
    private String content;
    private String uploadId;
}
