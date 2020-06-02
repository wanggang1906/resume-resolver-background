package com.emit.resume.domain;


import lombok.Data;

//结果的实体类-------不用了
//简历解析结果保存数据库
@Data
public class Result {
    /*
    //用户编号-主键
    private String id;
    //基本信息
    private String basicInformation;
    //职业技能
    private String professionalSkill;
    //工作经历
    private String jobExperience;
    //项目经历
    private String projectExperience;
    //教育经历
    private String eduExperience;
    //自我评价
    private String selfEvaluate;
     */
    //cv_info表和cv_word表
    private int id;
    private int ruleId;
    private String cvName;
    private String originalName;
    private String modelName;
    private String content;

}
