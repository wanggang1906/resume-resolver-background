package com.emit.resume.service.impl;

import com.emit.resume.dao.ResultDao;
import com.emit.resume.domain.*;
import com.emit.resume.service.CvResolves;
import com.emit.resume.util.CommonUtil;
import com.emit.resume.util.Constant;
import com.emit.resume.util.DealWordByPoi;
import com.github.pagehelper.PageHelper;
import org.apache.commons.beanutils.BeanComparator;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


//解析简历实现类
@Service("CvResolves") //说明这是一个JavaBean
public class CvResolvesImpl implements CvResolves {
    //写数据库的注解
    @Autowired
    private ResultDao resultDao;
    @Override
    public ArrayList<String> readRule(HttpServletRequest request) {
        return null;
    }

    @Override //数据库写数据
    public void addCsvKeyword(CvKeyword ck) {
        resultDao.addCsvKeyword(ck);
    }

    //docx文件的解析
    public String docxFile(String path) {

        //cv_word表中的另一个值，要从cv_info表中得到
        String CvResolverId = "";
        //简历标识码
        String uuid = CommonUtil.getUuid();
        String userId = "123";

        Result result = new Result();
        DealWordByPoi dwbp = new DealWordByPoi();

        //用后缀名判断，调用不同的转化解析方法
        String fileStr = "";
        if (path.endsWith(".docx")) {
            fileStr = dwbp.readTable(path).toString();
        } else if (path.endsWith(".doc")) {
            fileStr = dwbp.readDocTableWord(path);
        }else if(path.endsWith(".pdf")){
            fileStr = dwbp.readPdf(path);
        }
        String versionNumber = null;
        List<CvKeyword> newModelList = new ArrayList<>();
        //查询有几个模板
        List<String> modelsList = resultDao.findModels(userId); //版本号的提取 --同一个用户
//        List newModelList = new ArrayList();
        for(String version : modelsList){
            List<CvKeyword> list = resultDao.findKeyName(userId,version); //模块名的提取 --同一个用户，同一个版本
            System.out.println("---规则提取完成---");

            List<CvKeyword> allList = new ArrayList<>();
            for(CvKeyword ck : list){   //关键字在简历文档中
                if(fileStr.indexOf(ck.getModelValue()) > -1) {
                    ck.setSorder2(fileStr.indexOf(ck.getModelValue())); //添加关键字在文档中首次出现的位置
                    allList.add(ck); //规则关键在有有重复的
                }
            }
            System.out.println("简历中从在的所有关键字" + allList);

            boolean bool = false;
            for(CvKeyword cv:allList){
                if("基本信息".equals(cv.getModelName())){
                    bool = true;
                }
            }
           if( !bool ){
               fileStr = "基本信息"+fileStr;
           }
            CvKeyword ck = new CvKeyword();
            ck.setModelValue("基本信息");
            ck.setModelName("基本信息");
            allList.add(ck);
            versionNumber = version; //规则版本号

            Long modelsNumber = resultDao.findModelsNumber(versionNumber);
            //newModelList.size();
//            if(modelsNumber==allList.size()){
                newModelList.addAll(allList);
        }

        //此处是注释
        //统一解析预处理
        //先确定关键字在简历中
        newModelList.sort(new BeanComparator<>("sorder2")); //排序
        int count2 = 0;
        Map map2 = new HashMap();
        for(CvKeyword ck : newModelList){
            count2 ++;
            map2.put(count2,ck.getModelValue()); //构建map键值对，值为模块关键字
        }
        count2 = 0;

        List resultList2 = new ArrayList();
        for(CvKeyword ck : newModelList){
            count2++;
            String st = ck.getModelValue(); //开始关键字
            String end = (String)map2.get(count2+1); //结束关键字为 下一个关键字

            String content = dwbp.findString(fileStr,st,end);
            if(content != null) {
                //方法的返回值
                CvWord cvWord = new CvWord(); //结果对象
                cvWord.setModelName(ck.getModelName()); //模块名为开始关键字
                cvWord.setContent(content);
                cvWord.setUploadId(uuid);
                System.out.println(content);
                resultDao.addCvWord(cvWord);
                //resultDao.addCvWord2(cvWord);
                //查找是否属于基本信息 --- 模块名 == “基本信息”
                String info = resultDao.findIsBasicInfo(ck.getModelName()); //获得模块名--此关键字对应的模块名为基本信息，则认为是属于基本信息类的
                // 二级解析-在一级解析之下，解析基本信息模块或者二级解析模块
                if ("基本信息".equals(info) || "二级解析".equals(info)) {
                    //属性名列表，传入findSecondString
                    List<CvKeyword> attName = resultDao.findAttKeyName(versionNumber);
                    List<String> attNameList = new ArrayList<>();
                    for (CvKeyword at : attName) {   //属性值-从关键字对象中提取出来
                        attNameList.add(at.getModelValue());
                    }
                    List<BasicInfo> basicInfoList = dwbp.findSecondString(uuid, attNameList, content); //content不为空时
                    List<BasicInfo> basicInfoList1 = new ArrayList<>();
                    // 基本信息关键字为空时，按全角空格进行分隔
                    if (basicInfoList.size() == 0){
                        String[] splited = content.split("　");
                        System.out.println("基本信息分隔数组：" + splited[0]);
                        for(int i=0; i<splited.length;i++){
                            System.out.println("过滤后");
                            String s = splited[i];
                            if(StringUtils.isBlank(s)){
                                continue;
                            }

                            if(i==0){
                                BasicInfo basicInfo = new BasicInfo();
                                basicInfo.setInfoName("姓名");
                                basicInfo.setInfoValue(splited[i]);
                                basicInfo.setUuid2(uuid);

                                basicInfoList1.add(basicInfo);
                            } else {
                                String[] others = s.split("/");
                                for(String otherStr:others){
                                    if(otherStr.indexOf("年")>-1){
                                        BasicInfo basicInfo = new BasicInfo();
                                        basicInfo.setInfoName("工作年限");
                                        basicInfo.setInfoValue(otherStr);
                                        basicInfo.setUuid2(uuid);
                                        basicInfoList1.add(basicInfo);
                                    } else   if(otherStr.indexOf("岁")>-1){
                                        BasicInfo basicInfo = new BasicInfo();
                                        basicInfo.setInfoName("年龄");
                                        basicInfo.setInfoValue(otherStr);
                                        basicInfo.setUuid2(uuid);
                                        basicInfoList1.add(basicInfo);
                                    } else   if(otherStr.indexOf("公司")>-1){
                                        BasicInfo basicInfo = new BasicInfo();
                                        basicInfo.setInfoName("公司");
                                        basicInfo.setInfoValue(otherStr);
                                        basicInfo.setUuid2(uuid);
                                        basicInfoList1.add(basicInfo);
                                    } else if(otherStr.indexOf("本科")>-1||otherStr.indexOf("硕士")>-1||otherStr.indexOf("博士")>-1||otherStr.indexOf("大专")>-1){
                                        BasicInfo basicInfo = new BasicInfo();
                                        basicInfo.setInfoName("学历");
                                        basicInfo.setInfoValue(otherStr);
                                        basicInfo.setUuid2(uuid);
                                        basicInfoList1.add(basicInfo);
                                    } else {
                                        BasicInfo basicInfo = new BasicInfo();
                                        basicInfo.setInfoName("字段名");
                                        basicInfo.setInfoValue(otherStr);
                                        basicInfo.setUuid2(uuid);
                                        basicInfoList1.add(basicInfo);
                                    }
                                }
                            }

//                            if(splited[i] != null){
//                                BasicInfo basicInfo = new BasicInfo();
//                                System.out.println("基本信息列表" + splited[i]);
//                                basicInfo.setInfoName("字段名");
//                                basicInfo.setInfoValue(splited[i]);
//                                basicInfo.setUuid2(uuid);
//
//                                basicInfoList1.add(basicInfo);
//
//                            }
                        }
                        System.out.println(basicInfoList1);
                        resultDao.addCvBasicInfoList(basicInfoList1);

                    }
                    //uuid
                    //basicInfoList.(uuid);    //添加uuid
                    // 基本信息写入数据库
//                            if(StringUtils.isNotBlank(content)){
//                                String infoName = "";
//                                String infoValue = "";
//                                BasicInfo bi = new BasicInfo();
//                                bi.setInfoName(infoName);
//                                bi.setInfoValue(infoValue);
//                                resultDao.addCvBasicInfo(bi);
//                            }
                    if (basicInfoList != null && basicInfoList.size()>0) { //不为空且长度大于零
                        resultDao.addCvBasicInfoList(basicInfoList);   //如果列表中的内容有，分隔，则要用#号进行转义
                    }
                }
            }

        } //end for(CvKeyword ck : newModelList)
        return uuid;
    }

    //确定文档中该关键字是否出现过
    //输入文档，所有关键字
    //输出该文档中出现过的关键字列表
    public List<String> findKeyListOfStr(String fileStr, List<String> oldKeyList) {
        ArrayList newKeyList = new ArrayList();
        for (String key : oldKeyList) {
            String regEx = key;
            String resultStr = null;
            Matcher matcher = Pattern.compile(regEx).matcher(fileStr);
            while (matcher.find()) {
                resultStr = matcher.group();
                newKeyList.add(resultStr);
            }
        }
        return newKeyList;
    }

    //解析之外的小功能
    //分页展示
    public List<CvInfo> pageShow(Integer pageNum,String type,String value){
        PageHelper.startPage(pageNum, Constant.CONST_PAGE_COUNT);
        //已解析过的简历列表，有摘要
        List<CvInfo> cvInfoList2 = resultDao.findCvInfoMap(type,value);
        // 可序列化的页面
        //PageSerializable<CvInfo> cvInfoPageSerializable = new PageSerializable<CvInfo>(cvInfoList2);
        //System.out.println(cvInfoList2);
        System.out.println("摘要方法2");

        // 确定有摘要关键字
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
        //System.out.println(cvInfoList2);
        return cvInfoList2;
    }

    // 按关键字进行检索
    public List<CvInfo> searchCv(String searchKey){
        //只能是两个关键字，关键字之间用逗号分隔 ---- 错误的
        // 通过map得到第一和第二关键字
        // 用第一关键字找“工作年限”，用第二关键字找“职位”

        //一次只传一个关键字

        //把关键字传到sql中进行查询
        //List<CvInfo> cvInfoList2 = resultDao.findCvOfSearchKey(searchKey);

        // 直接再摘要结果集中进行检索
        String type="工作年限";
        String value="3年";
        System.out.println("在摘要结果集中进行检索");
        List<CvInfo> cvInfoList2 = resultDao.findCvInfoMap(type,value);
        List<CvInfo> resultCvInfoList = null;
        if (cvInfoList2 != null){
            for(CvInfo cvInfo:cvInfoList2){
            }

        }

        return resultCvInfoList;
    }

}