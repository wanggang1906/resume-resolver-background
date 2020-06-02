package com.emit.resume.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.emit.resume.dao.ResultDao;
import com.emit.resume.domain.*;
import com.emit.resume.service.CvResolves;
import com.emit.resume.util.CommonUtil;
import com.emit.resume.view.ResultView;
import com.github.pagehelper.PageSerializable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;


//【调用实现类的接口】
//这是控制类，不写实现方法，只调用就行，可以用做页面的跳转
@Controller
@RequestMapping("/api/cv")
public class CvController {
    //要调用实现方法时先用注解声明，（定义一个对象）
    @Autowired
    private CvResolves cvResolves;
    @Autowired
    private ResultDao resultDao;
    @ResponseBody
    @PostMapping("/rule")
    public ResultView rule(HttpServletRequest request, @RequestParam(value = "data") String data) throws ServletException, IOException {
        //System.out.println("输出数据-未解析的data");

        List<JsonRootBean> jsonData = JSONArray.parseArray(data, JsonRootBean.class);
        String userId = "123";
        String versionNumber = userId + CommonUtil.getUuid();
        //当前用户的历史版本最大值
        Long count = resultDao.getMaxCount(userId);

        resultDao.addRuleJson(userId, data, count, versionNumber);
        resultDao.insertHistory(userId,count);
        resultDao.deleteRule(userId);
        for (JsonRootBean jsonRootBean : jsonData) {
            // 只输出了modelNmae没有输出关键字
            System.out.println(jsonRootBean.getModelName()); //循环输出json数据中的值
//            System.out.println(jsonRootBean.getFieldName()); //
//            System.out.println(jsonRootBean.getAttributeName());
//            System.out.println(jsonRootBean.getId());

            String moduleName = jsonRootBean.getModelName();
            List<Field>  jsonRootBeans = jsonRootBean.getFieldName();
            List<Attribute> attributeBeans = jsonRootBean.getAttributeName();

            List<CvKeyword> list = new ArrayList();
            if(jsonRootBeans != null){
                for(Field filed:jsonRootBeans){
                    CvKeyword ck = new CvKeyword();
                    ck.setModelName(moduleName);
                    ck.setModelValue(filed.getValue());
                    ck.setUserId(userId);
                    ck.setVersionNumber(versionNumber);
                    ck.setType("1"); //一级解析
                    list.add(ck);
                    cvResolves.addCsvKeyword(ck);
                    //resultDao.addCsvKeyword(ck);
                    System.out.println("---1级-规则写入成功---");
                }
            }
            if(attributeBeans != null){
                for(Attribute attribute:attributeBeans){
                    CvKeyword ck = new CvKeyword();
                    ck.setModelName(moduleName);
                    ck.setModelValue(attribute.getValue());
                    ck.setUserId(userId);
                    ck.setVersionNumber(versionNumber);
                    ck.setType("2"); //二级解析
                    list.add(ck);
                    cvResolves.addCsvKeyword(ck);
                    System.out.println("---2级-规则写入成功---");
                }
            }
        }
        return new ResultView<>();
    }

    @ResponseBody
    @RequestMapping(value = "/input")
    public ResultView putFile(@RequestParam("file") MultipartFile file) {
        //记录标记为同一份简历
        String uuid = "";
        String userId = "1234";
        //获取随机数
        Random ran = new Random();
        int random = ran.nextInt(1000);
        CvInfo ci = new CvInfo();

        if (!file.isEmpty()) {
            try {
                //文件保存在服务器中的名字(UserId+原始文件名+随机数)
                String fileNewName = userId + random + file.getOriginalFilename();
                //原始文件名
                String fileOriginalName = file.getOriginalFilename();
                String ruleId = "123";//解析规则id
                //绝对路径+原始文件名（文件路劲+文件名）
                // 相对路径 resume\\static\\  ??
                String path = "E:\\IdeaProjects\\002JAVA\\resume\\static\\" + fileNewName;
                //上传
                file.transferTo(new File(path)); //存储文件
                uuid = cvResolves.docxFile(path);

                Date date = new Date();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmm");
                String uploadDate = simpleDateFormat.format(date);
                //String uploadDate = "2019";

                ci.setCvName(fileNewName);
                ci.setOriginalName(fileOriginalName);
                //ci.setRuleId(ruleId);
                ci.setUploadId(uuid);
                ci.setUploadDate(uploadDate);
                resultDao.addResultToCvInfo(ci);

            } catch (IOException e) {

            }
        } else {

        }

        List<CvWord> list = resultDao.findContentWord(uuid); //把结果从数据库中取出放到此列表中

        List<BasicInfo> basicInfoList = resultDao.findBasicInfo(uuid);
        List<Object> list2 = new ArrayList();
        list2.add(list);
        list2.add(basicInfoList);
        return new ResultView<>(list2);
    }

    @ResponseBody
    @RequestMapping(value = "/choosePreview")
    public ResultView choosePreviewList(@RequestParam(required = false, value = "pageNum", defaultValue = "1") Integer pageNum,@RequestParam(value = "type") String type,@RequestParam(value = "value") String value){
        // 分页 -初始值为1，非必须
        // 传递到前端的是本页数据和共多少页
        /*
        PageHelper.startPage(pageNum, Constant.CONST_PAGE_COUNT);
        String title = "";
        // 页数==总共记录数/每页最大数


        //已解析过的简历列表
        //摘要方法1
        //List<CvInfo> cvInfoList = resultDao.findCvInfo();
        //System.out.println(cvInfoList);
        //System.out.println("历史简历");
        //已解析过的简历列表，有摘要
        List<CvInfo> cvInfoList2 = resultDao.findCvInfoMap();
        //PageSerializable<CvInfo> cvInfoPageSerializable = new PageSerializable<CvInfo>(cvInfoList2);
        System.out.println(cvInfoList2);
        System.out.println("摘要方法2");


        if(cvInfoList2 != null){
            for(CvInfo cvInfo:cvInfoList2){
                if(cvInfo.getBaseInfo()!= null){
                    List<BasicInfo> basicInfoList = cvInfo.getBaseInfo();
                    for(BasicInfo basicInfo:basicInfoList){
                        if("工作年限".equals(basicInfo.getInfoName())){
                            cvInfo.setWorkYears(basicInfo.getInfoValue());
                        }
                        if("职位".equals(basicInfo.getInfoName())){
                            cvInfo.setPost(basicInfo.getInfoValue());
                        }
                    }
                }
            }
        }
        System.out.println("处理后数据");
        System.out.println(cvInfoList2);
        */


        // 从service获得要展示的数据，分页数
//        System.out.println("选择预览");
//        JSONObject jsonObject = JSONObject.parseObject(data);
//        //System.out.println(jsonObject);
//
//        String type = jsonObject.get("type").toString();
//        String value = jsonObject.get("value").toString();
//
//        System.out.println(jsonObject.get("type"));

        System.out.println("解析历史页面");
        List<CvInfo> cvInfoList3 = cvResolves.pageShow(pageNum,type,value);
        //分页展示
        PageSerializable<CvInfo> cvInfoPageSerializable = new PageSerializable<CvInfo>(cvInfoList3);
        System.out.println(cvInfoPageSerializable);
        return new ResultView<>(cvInfoPageSerializable);
    }

    // 不用了
    @ResponseBody
    @RequestMapping(value = "/searchCvOfAbstract")
    public ResultView searchCvOfAbstract(@RequestParam(value = "data") String data){
        // 按摘要检索已解析过的简历,关键字之间用英文逗号分隔，只能是两个关键字 -- 不用了

/*
        // 解析json串为Map
        JSONObject jsonObject = JSONObject.parseObject(data);
        Map<String,Object> keyMap = new HashMap<String,Object>();
        // json迭代器
        System.out.println("解析");
        String key1 = null;

        key1 = jsonObject.getDate("工作时间").toString();
        System.out.println("yan");
        System.out.println(key1);
 */
//        while(it.hasNext()){
//            String key = (String) it.next();
//            Object value = jsonObject.get(key);
//            keyMap.put(key,value);
//        }


        // 工作年限关键字
        //
        JSONObject jsonObject = JSONObject.parseObject(data);
        System.out.println(jsonObject);
        Integer pageNum = 1;

        String type = jsonObject.get("type").toString();
        String value = jsonObject.get("value").toString();
        System.out.println(jsonObject.get("type"));

        List<CvInfo> cvInfoList4 = cvResolves.pageShow(pageNum,type,value);
        System.out.println("检索");
        System.out.println(cvInfoList4);

        // 倒置 -- 错误的
        //Collections.reverse(cvInfoList4);
        PageSerializable<CvInfo> cvInfoPageSerializable4 = new PageSerializable<>(cvInfoList4);



        return new ResultView<>(cvInfoPageSerializable4);
    }

    @ResponseBody
    @RequestMapping(value = "/PreviewFile")
    public ResultView previewFile(@RequestParam("uploadId") String  uploadId){
        // 用户选择后展示简历
        System.out.println("de");
        //System.out.println("--未解析的数据--"+uploadId);
        //System.out.println(uploadId);

        List<CvWord> listOfCvWord2 = new ArrayList<>();
        List<CvWord> listOfCvWord = resultDao.findContentWord(uploadId);
        for(CvWord cvWord:listOfCvWord){
            if("基本信息".equals(cvWord.getModelName())){
                continue;
            }else {
                listOfCvWord2.add(cvWord);
            }
        }
        List<BasicInfo> listOfBasicInfo = resultDao.findBasicInfo(uploadId);
        List<Object> resultList = new ArrayList();
        resultList.add(listOfCvWord2);
        resultList.add(listOfBasicInfo);
        return new ResultView(resultList);
    }
    @ResponseBody
    @RequestMapping(value = "/historyRule")
    public ResultView historyRule(){
        System.out.println("进入全部规则");
        String userId = "123";
        //历史规则查看-显示修改时间，修改次数
        //List<CvInfo> cvInfoList = resultDao.findCvInfo();
        List<CvKeywordCopy> allHistoryRuleList = null;
        allHistoryRuleList = resultDao.findHistoryRuleList(userId);
        return new ResultView<>(allHistoryRuleList);
    }
    @ResponseBody
    @RequestMapping(value = "/showDetailRule")
    public ResultView showDetailRule(@RequestParam("versionNumber")String versionNumber){
        //更新规则库-删除主表，添加主表和副表，副表加入更新信息
        //1-判断主表有无数据，若有则继续

        //2-删除主表

        //
        //1-根据规则版本查找规则(从副表中查)，显示给前端
        //List<CvKeywordCopy> historyRuleList = resultDao.findRuleOfVerNum(versionNumber);
        System.out.println("查询json规则");

        //从数据库中找到verNum对应的数据，返回
        String resultStr = resultDao.findRuleJsonOfVerNum(versionNumber);
        System.out.println(resultStr);
        return new ResultView<>(resultStr);
    }

    //显示最新规则
    @ResponseBody
    @RequestMapping(value = "/initializeRulePackage")
    public ResultView refreshRulePackage(){
        //初始化规则页面方法
        //刷新页面时显示最新的规则
        String userId = "123";
        //查找rule_json表中版本号最大的一条记录
        String resultStr = resultDao.findNearestRuleToRuleJson(userId);
        System.out.println(resultStr);

        return new ResultView<>(resultStr);
    }

}
