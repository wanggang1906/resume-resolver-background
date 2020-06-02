package com.emit.resume.dao;

import com.emit.resume.domain.*;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface ResultDao {
    //数据库操作方法
    //要加两个注解，写入次方法自动执行XML中的SQL语句
    //void addResult(Result result);

    void addCsvKeyword(CvKeyword ck);

    void addCsvKeywordCopy(CvKeywordCopy cwc);
    //查找模块名和关键字
    List findKeyName(String userId,String versionNumber);
    List findAttKeyName(String findAttKeyName); //查询属性名

    void addCvWord(CvWord cw);

    String findCvResolveId();

    List findContentWord(String uuid);
    List findBasicInfo(String uuid);

    String findUserId();

    String findIsBasicInfo(String modelValue);

    void addCvBasicInfo(BasicInfo bi);

    void addCvBasicInfoList(List<BasicInfo> basicInfoList);

    void addResultToCvInfo(CvInfo ci);


    //void addCvWord2(CvWord cvWord);

    List findModels(String userId);

    Long findModelsNumber(String versionNumber);

    List findCvInfo();

    Long getMaxCount(String userId);

    void insertHistory(@Param(value = "userId") String userId, @Param(value = "count")long count);

    void deleteRule(String userId);

    List<CvKeywordCopy> findHistoryRuleList(String userId);

    List<CvKeywordCopy> findRuleOfVerNum(String versionNumber);

    void addRuleJson(@Param(value = "userId") String userId,@Param(value = "jsonDate") String date,@Param(value = "count")long count,@Param(value = "versionNumber") String version_number);

    String findRuleJsonOfVerNum(String versionNumber);

    String findNearestRuleToRuleJson(String userId);

    List<CvInfo> findCvInfoMap(String type,String value);

    List<CvInfo> findCvOfSearchKey(String searchKey);
}
