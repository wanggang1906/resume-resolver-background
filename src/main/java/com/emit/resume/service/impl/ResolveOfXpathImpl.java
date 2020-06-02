package com.emit.resume.service.impl;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.converter.PicturesManager;
import org.apache.poi.hwpf.converter.WordToHtmlConverter;
import org.apache.poi.hwpf.usermodel.Picture;
import org.apache.poi.hwpf.usermodel.PictureType;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.io.*;
import java.util.List;

public class ResolveOfXpathImpl {
    // 通过xpath精确解析
    // 属性名，待匹配Html字符流，select路径
    //返回-属性名 + 属性值得字符串，用空格分隔
    public String utilJsoup(String attributeName,String htmlStr,String selectPath){
        String result = null;
        File input = new File(htmlStr); //这种解析的方法适用于文件存储在本地硬盘，这是一个静态的Jsoup.parse方法(三个参数)
        Document doc = null; //用于接受Html文件的Document文档
        try {
            doc = Jsoup.parse(input,"UTF-8");  //--解析HTML字符串放回一个Document实现
        } catch (IOException e) {
            e.printStackTrace();
        }
        //Jsoup.parse可以接受一个含html标签的String型字符串
        // 解析成Document,之后利用Document中的方法或者其父类Element和Node中的方法来处理取得相关数
        Elements attributeNameElment = doc.select(selectPath);
        result = attributeName + " " + attributeNameElment.text();
        return result;
    }

    public void jsoupToHtml(String path){
        File input = new File(path); //html文件实例化

        Document doc = null;
        //doc = Jsoup.parse(input,"UTF-8",path);
        try {
            doc = Jsoup.parse(input,"UTF-8");
        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.println("开始转换");
        //姓名
        Elements name = doc.select("body > table:nth-child(1) > tbody > tr > td.td9 > table > tbody > tr:nth-child(1) > td.td2 > p > span");
        String sv1 = "姓名---" + name.text();
        System.out.println(sv1);

        //目前状态
        Elements muqian = doc.select("body > table:nth-child(1) > tbody > tr > td.td9 > table > tbody > tr:nth-child(3) > td > p > span.s3");
        String mv = "目前状态---" + muqian.text();
        System.out.println(mv);

        Elements recentWork = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(2) > tbody > tr.r3 > td > p > span");
        System.out.println(recentWork.text()); //最近工作

        //职位
        Elements post = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(2) > tbody > tr:nth-child(3) > td.td10 > p > span");
        Elements postValue = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(2) > tbody > tr:nth-child(3) > td.td11 > p > span");
        String pv = post.text() + postValue.text();
        System.out.println(pv);

        //公司
        Elements company = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(2) > tbody > tr:nth-child(4) > td.td10 > p > span");
        Elements companyValue = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(2) > tbody > tr:nth-child(4) > td.td11 > p > span");
        String cv = company.text() + companyValue.text();
        System.out.println(cv);
        //Element company = doc.select("div.masthead").first(); //查找第一个  元素

        //个人信息 --- 模板有问题，不标准
        Elements personalInfo = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(6) > tbody > tr.r3 > td > p > span");
        System.out.println(personalInfo);

        //年收入
        Elements annualIncom = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(8) > tbody > tr > td > p > span:nth-child(1)");
        Elements annualIncomValue = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(8) > tbody > tr > td > p > span.s7");
        String av = annualIncom.text() + annualIncomValue.text();
        System.out.println(av);

        //求职意向
        Elements jobIntention = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r3 > td > p > span");
        System.out.println(jobIntention.text());

        //期望薪资
        Elements expectationIncom = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(1) > tbody > tr > td.td17 > p > span");
        Elements expectationIncomValue = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(1) > tbody > tr > td.td18 > p > span");
        String ev = expectationIncom.text() + expectationIncomValue.text();
        System.out.println(ev);

        //自我评价
        Elements selfEvaluation = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(2) > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(2) > td.td24 > p > span");
        Elements selfEvaluationValue1 = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(2) > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(2) > td.td25 > p > span:nth-child(1)");
        Elements selfEvaluationValue2 = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(2) > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(2) > td.td25 > p > span:nth-child(3)");
        Elements selfEvaluationValue3 = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(2) > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(2) > td.td25 > p > span:nth-child(5)");
        Elements selfEvaluationValue4 = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(2) > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(2) > td.td25 > p > span:nth-child(7)");
        String sv = selfEvaluation.text() + selfEvaluationValue1.text() + selfEvaluationValue2 .text() +
                selfEvaluationValue3.text() + selfEvaluationValue4.text();
        System.out.println(sv);

        //工作经验
        Elements workExperience = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(12) > tbody > tr.r3 > td > p > span");
        System.out.println(workExperience.text());

        //时间
        Elements workExperienceTime = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(12) > tbody > tr.r1 > td > table:nth-child(1) > tbody > tr:nth-child(1) > td.td27 > p > span");
        //部门
        Elements workExperienceTimeValue = doc.select("body > table:nth-child(2) > tbody > tr > td > table:nth-child(12) > tbody > tr.r1 > td > table:nth-child(1) > tbody > tr:nth-child(1) > td.td28 > p > span.s8");
        String wtv = workExperienceTime.text() + workExperienceTimeValue.text();
        System.out.println(wtv);

    }

    //转换为HTML
    //传入：doc型的简历文件地址和文件名
    //传出：转换为HTML字符流
    public String wordDocToHtml(String path){
        String result = null;
        WordToHtmlConverter wordToHtmlConverter = null;
        try {
            InputStream input = new FileInputStream(path);
            HWPFDocument wordDoc = new HWPFDocument(input);
            wordToHtmlConverter = new WordToHtmlConverter(
                    DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument()
            );
            wordToHtmlConverter.setPicturesManager(new PicturesManager() {
                @Override
                public String savePicture(byte[] bytes, PictureType pictureType, String s, float v, float v1) {
                    return s;
                }
            });

            wordToHtmlConverter.processDocument(wordDoc); //
            List pictures = wordDoc.getPicturesTable().getAllPictures();
            if (pictures != null){
                for (int i = 0; i < pictures.size(); i++){
                    Picture pic = (Picture) pictures.get(i);
                    pic.writeImageContent(new FileOutputStream(path  //图片处理
                            +pic.suggestFullFileName()));
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        org.w3c.dom.Document htmlDocument = wordToHtmlConverter.getDocument();
        ByteArrayOutputStream outStream = new ByteArrayOutputStream();
        DOMSource domSource = new DOMSource(htmlDocument);
        StreamResult streamResult = new StreamResult(outStream);
        TransformerFactory transformer = TransformerFactory.newInstance();
        Transformer serializer = null; //定义接收转换变量
        try {
            serializer = transformer.newTransformer();
            serializer.setOutputProperty(OutputKeys.ENCODING,"utf-8");
            serializer.setOutputProperty(OutputKeys.INDENT,"yes");
            serializer.setOutputProperty(OutputKeys.METHOD,"html");
            serializer.transform(domSource, streamResult);
            outStream.close(); //关闭文件

        } catch (TransformerConfigurationException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TransformerException e) {
            e.printStackTrace();
        }

        result = new String(outStream.toByteArray()); //返回结果

        return result;


    }

    //按select选择器进行字段选择
    //传入：HTMl字符流。【模块名列表，字段名列表】
    //传出：-各个(整个文件的)-属性名和属性值
    //按某一个简历写解析代码
    public String select22(String htmlStr,String path){
        String name ,state,post,company,annualIncom,jobIntention,exceptationIncom,selfEvaluation,
                workExperienceTime,workExperience
                = null;
        ResolveOfXpathImpl at = new ResolveOfXpathImpl();
        //样式 属性名变量名--属性名中文--选择路径
        name = at.utilJsoup("姓名",htmlStr,"body > table:nth-child(1) > tbody > tr > td.td9 > table > tbody > tr:nth-child(1) > td.td2 > p > span");
        state = at.utilJsoup("目前状态",htmlStr,"body > table:nth-child(1) > tbody > tr > td.td9 > table > tbody > tr:nth-child(2) > td.td4 > p > span");
        post = at.utilJsoup("值位",htmlStr,"body > table:nth-child(2) > tbody > tr > td > table:nth-child(2) > tbody > tr:nth-child(3) > td.td11 > p > span");
        company = at.utilJsoup("公司",htmlStr,"body > table:nth-child(2) > tbody > tr > td > table:nth-child(2) > tbody > tr:nth-child(4) > td.td11 > p > span");
        annualIncom = at.utilJsoup("年收入",htmlStr,"body > table:nth-child(2) > tbody > tr > td > table:nth-child(8) > tbody > tr > td > p > span:nth-child(1)");
        jobIntention = at.utilJsoup("求值意向",htmlStr,"body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(1) > tbody > tr:nth-child(2) > td.td18 > p > span");
        exceptationIncom = at.utilJsoup("期望薪資",htmlStr,"body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(1) > tbody > tr > td.td18 > p > span");
        selfEvaluation = at.utilJsoup("自我评价",htmlStr,"body > table:nth-child(2) > tbody > tr > td > table:nth-child(10) > tbody > tr.r1 > td > table:nth-child(2) > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(2) > td.td25 > p > span:nth-child(1)");
        workExperienceTime = at.utilJsoup("工作时间",htmlStr,"body > table:nth-child(2) > tbody > tr > td > table:nth-child(12) > tbody > tr.r1 > td > table:nth-child(1) > tbody > tr:nth-child(2) > td > p > span.s11");
        workExperience = at.utilJsoup("工作经验",htmlStr,"body > table:nth-child(2) > tbody > tr > td > table:nth-child(14) > tbody > tr.r1 > td > table:nth-child(1) > tbody > tr:nth-child(3) > td > table > tbody > tr > td.td31 > p > span:nth-child(1)");

        String s = "";
        s = name + state +post +company +annualIncom +jobIntention +exceptationIncom +selfEvaluation +workExperience +workExperienceTime;
        System.out.println(name);
        //return name; //返回简历的属性【集合】
        return s;
    }


    public static void main(String[] args){
        ResolveOfXpathImpl js = new ResolveOfXpathImpl();
        js.jsoupToHtml("E:\\IdeaProjects\\JIANLI\\XML\\转HTNML.html");
        String s1="";
        s1 = js.utilJsoup("部门","E:\\IdeaProjects\\JIANLI\\XML\\转HTNML.html",
                "body > table:nth-child(2) > tbody > tr > td > table:nth-child(12) > tbody > tr.r1 > td > table:nth-child(1) > tbody > tr:nth-child(1) > td.td28 > p > span.s8");
        System.out.println(s1);

        // 方法2调用者
        ResolveOfXpathImpl cwd = new ResolveOfXpathImpl();
        String html = "";
        String se = null;
        //html = cwd.wordDocToHtml("E:\\IdeaProjects\\JIANLI\\17Java2年经验开发工程师2.doc");
        //se = cwd.select22(html,"E:\\IdeaProjects\\JIANLI\\17Java2年经验开发工程师2.doc");
        //System.out.println("------------");
        //System.out.println(se);

    }

}
