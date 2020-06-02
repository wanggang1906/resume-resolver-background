package com.emit.resume.domain;

import lombok.Data;

@Data
public class BasicInfo {
    //对应cv_basic_info表
    private int sorder;

    private String name;
    private int cvResolveId; //暂时没有写入
    private String infoName; //==name
    private String infoValue;
    private String uuid2; //简历标记
}
