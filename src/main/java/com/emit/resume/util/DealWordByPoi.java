package com.emit.resume.util;

import com.emit.resume.domain.BasicInfo;
import org.apache.commons.beanutils.BeanComparator;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.usermodel.*;
import org.apache.poi.xwpf.usermodel.*;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.*;

import java.io.*;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DealWordByPoi {
    private Map<String,Map<String,Object>> orderMap =new HashMap<String, Map<String,Object>>(); //map数据结构？？

    //读纯文本为xml
    public void init(String targetPath,String sourcePath){
        InputStream is = null;
        XWPFDocument doc=null;
        OutputStream out=null;
        try {
            XWPFDocument createDoc = new XWPFDocument();

            is = new FileInputStream(sourcePath);
            doc = new XWPFDocument(is);
            //获取段落
            List<XWPFParagraph> paras=doc.getParagraphs();

            for (XWPFParagraph para : paras){
                System.out.println(para.getCTP());//得到xml格式
                System.out.println(para.getStyleID());//段落级别
                System.out.println(para.getParagraphText());//段落内容
                System.out.print("---获取段落级别---");
                String titleLvl = getTitleLvl(doc,para);//获取段落级别

                if("a5".equals(titleLvl)||"HTML".equals(titleLvl)||"".equals(titleLvl)||null==titleLvl){
                    titleLvl = "8"; //xml格式

                }
                System.out.println(titleLvl+"---段落级别--");//0,1,2
                if(!"8".equals(titleLvl)){
                    System.out.println(titleLvl+"===="+para.getParagraphText());
                }


                XWPFParagraph ctPara = createDoc.createParagraph();
                //一个XWPFRun代表具有相同属性的一个区域。
                XWPFRun ctRun = ctPara.createRun();
                String ctText = para.getParagraphText();
                ctRun.setFontFamily("宋体");//字体
                ctRun.setFontSize(12);

                if(null!=titleLvl&&!"".equals(titleLvl)&&!"8".equals(titleLvl)){
                    addCustomHeadingStyle(createDoc,titleLvl,Integer.parseInt(titleLvl));
                    String orderCode = getOrderCode(titleLvl);//获取编号
                    ctText = orderCode+" "+ctText;
                    ctRun.setBold(true);//标题加粗
                    ctRun.setFontSize(14);

                    ctPara.setStyle(titleLvl);

                }else{//正文
                    ctPara.setIndentationFirstLine(567);//首行缩进：567==1厘米
//                  ctRun.setTextPosition(6);//设置行间距
                }

                ctRun.setText(ctText);//内容
            }
            out=new FileOutputStream(targetPath);
            createDoc.write(out);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            try {
                if(null!=out){
                    out.close();
                }
                if(null!=is){
                    is.close();
                }
            }catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * Word中的大纲级别，可以通过getPPr().getOutlineLvl()直接提取，但需要注意，Word中段落级别，通过如下三种方式定义：
     *  1、直接对段落进行定义；
     *  2、对段落的样式进行定义；
     *  3、对段落样式的基础样式进行定义。
     *  因此，在通过“getPPr().getOutlineLvl()”提取时，需要依次在如上三处读取。
     * @param doc
     * @param para
     * @return
     */

    //获取标题级别
    private static String getTitleLvl(XWPFDocument doc, XWPFParagraph para) {
        String titleLvl = "";
        try {
            //判断该段落是否设置了大纲级别
            if (para.getCTP().getPPr().getOutlineLvl() != null) {
                // System.out.println("getCTP()");
//              System.out.println(para.getParagraphText());
//              System.out.println(para.getCTP().getPPr().getOutlineLvl().getVal());

                return String.valueOf(para.getCTP().getPPr().getOutlineLvl().getVal());
            }
        } catch (Exception e) {

        }

        try {
            //判断该段落的样式是否设置了大纲级别
            if (doc.getStyles().getStyle(para.getStyle()).getCTStyle().getPPr().getOutlineLvl() != null) {

                // System.out.println("getStyle");
//              System.out.println(para.getParagraphText());
//              System.out.println(doc.getStyles().getStyle(para.getStyle()).getCTStyle().getPPr().getOutlineLvl().getVal());

                return String.valueOf(doc.getStyles().getStyle(para.getStyle()).getCTStyle().getPPr().getOutlineLvl().getVal());
            }
        } catch (Exception e) {

        }

        try {
            //判断该段落的样式的基础样式是否设置了大纲级别
            if (doc.getStyles().getStyle(doc.getStyles().getStyle(para.getStyle()).getCTStyle().getBasedOn().getVal())
                    .getCTStyle().getPPr().getOutlineLvl() != null) {
                // System.out.println("getBasedOn");
//              System.out.println(para.getParagraphText());
                String styleName = doc.getStyles().getStyle(para.getStyle()).getCTStyle().getBasedOn().getVal();
//              System.out.println(doc.getStyles().getStyle(styleName).getCTStyle().getPPr().getOutlineLvl().getVal());

                return String.valueOf(doc.getStyles().getStyle(styleName).getCTStyle().getPPr().getOutlineLvl().getVal());
            }
        } catch (Exception e) {

        }

        try {
            if(para.getStyleID()!=null){
                return para.getStyleID();
            }
        } catch (Exception e) {

        }

        return titleLvl;
    }

    /**
     * 增加自定义标题样式。这里用的是stackoverflow的源码
     *
     * @param docxDocument 目标文档
     * @param strStyleId 样式名称
     * @param headingLevel 样式级别
     */
    //添加自定义标题样式
    private static void addCustomHeadingStyle(XWPFDocument docxDocument, String strStyleId, int headingLevel) {

        strStyleId = String.valueOf(Integer.parseInt(strStyleId)+1);
        CTStyle ctStyle = CTStyle.Factory.newInstance();
        ctStyle.setStyleId(strStyleId);

        CTString styleName = CTString.Factory.newInstance();
        styleName.setVal(strStyleId);
        ctStyle.setName(styleName);

        CTDecimalNumber indentNumber = CTDecimalNumber.Factory.newInstance();
        indentNumber.setVal(BigInteger.valueOf(headingLevel));

        // lower number > style is more prominent in the formats bar
        ctStyle.setUiPriority(indentNumber);

        CTOnOff onoffnull = CTOnOff.Factory.newInstance();
        ctStyle.setUnhideWhenUsed(onoffnull);

        // style shows up in the formats bar
        ctStyle.setQFormat(onoffnull);

        // style defines a heading of the given level
        CTPPr ppr = CTPPr.Factory.newInstance();
        ppr.setOutlineLvl(indentNumber);
        ctStyle.setPPr(ppr);

        XWPFStyle style = new XWPFStyle(ctStyle);

        // is a null op if already defined
        XWPFStyles styles = docxDocument.createStyles();

        style.setType(STStyleType.PARAGRAPH);
        styles.addStyle(style);

    }
    /**
     * 获取标题编号
     * @param titleLvl
     * @return
     */

    //获取标题编号
    private String getOrderCode(String titleLvl) {
        String order = "";

        if("0".equals(titleLvl)||Integer.parseInt(titleLvl)==8){//文档标题||正文
            return "";
        }else if(Integer.parseInt(titleLvl)>0&&Integer.parseInt(titleLvl)<8){//段落标题

            //设置最高级别标题
            Map<String,Object> maxTitleMap = orderMap.get("maxTitleLvlMap");
            if(null==maxTitleMap){//没有，表示第一次进来
                //最高级别标题赋值
                maxTitleMap = new HashMap<String, Object>();
                maxTitleMap.put("lvl", titleLvl);
                orderMap.put("maxTitleLvlMap", maxTitleMap);
            }else{
                String maxTitleLvl = maxTitleMap.get("lvl")+"";//最上层标题级别(0,1,2,3)
                if(Integer.parseInt(titleLvl)<Integer.parseInt(maxTitleLvl)){//当前标题级别更高
                    maxTitleMap.put("lvl", titleLvl);//设置最高级别标题
                    orderMap.put("maxTitleLvlMap", maxTitleMap);
                }
            }

            //查父节点标题
            int parentTitleLvl = Integer.parseInt(titleLvl)-1;//父节点标题级别
            Map<String,Object> cMap = orderMap.get(titleLvl);//当前节点信息
            Map<String,Object> pMap = orderMap.get(parentTitleLvl+"");//父节点信息

            if(0==parentTitleLvl){//父节点为文档标题，表明当前节点为1级标题
                int count= 0;
                //最上层标题，没有父节点信息
                if(null==cMap){//没有当前节点信息
                    cMap = new HashMap<String, Object>();
                }else{
                    count = Integer.parseInt(String.valueOf(cMap.get("cCount")));//当前序个数
                }
                count++;
                order = count+"";
                cMap.put("cOrder", order);//当前序
                cMap.put("cCount", count);//当前序个数
                orderMap.put(titleLvl, cMap);

            }else{//父节点为非文档标题
                int count= 0;
                //如果没有相邻的父节点信息，当前标题级别自动升级
                if(null==pMap){
                    return getOrderCode(String.valueOf(parentTitleLvl));
                }else{
                    String pOrder = String.valueOf(pMap.get("cOrder"));//父节点序
                    if(null==cMap){//没有当前节点信息
                        cMap = new HashMap<String, Object>();
                    }else{
                        count = Integer.parseInt(String.valueOf(cMap.get("cCount")));//当前序个数
                    }
                    count++;
                    order = pOrder+"."+count;//当前序编号
                    cMap.put("cOrder", order);//当前序
                    cMap.put("cCount", count);//当前序个数
                    orderMap.put(titleLvl, cMap);
                }
            }

            //字节点标题计数清零
            int childTitleLvl = Integer.parseInt(titleLvl)+1;//子节点标题级别
            Map<String,Object> cdMap = orderMap.get(childTitleLvl+"");//
            if(null!=cdMap){
                cdMap.put("cCount", 0);//子节点序个数
                orderMap.get(childTitleLvl+"").put("cCount", 0);
            }
        }
        return order;
    }

    //Docx型文档的读取
    //简单表格内容的读取，不会转换为xml,不含合并单元格
    public StringBuilder readTable(String path){
        StringBuilder str = new StringBuilder();
        //String str = "";
        InputStream is = null;
        XWPFDocument doc=null;
        //OutputStream out=null;
        System.out.println("解析开始");

        try {
            is = new FileInputStream(path);
            doc = new XWPFDocument(is);   //有的docx不能解析，(如DOCX-何志成.docx)--只能是office的docx???

            //System.out.println("123");
            //System.out.println(doc);
            System.out.println("docx");
        } catch (IOException e) {
            e.printStackTrace();
        }
        List<XWPFTable> tables = doc.getTables();

        for (XWPFTable table : tables){
            //获取表格的行
            List<XWPFTableRow> rows = table.getRows();
            for (XWPFTableRow row : rows){
                //获取表格的每个单元格
                List<XWPFTableCell> tableCells = row.getTableCells();
                for (XWPFTableCell cell : tableCells){
                    //获取单元格内容
                    String text = cell.getText();
                    //System.out.println("\n得到解析格式XML");
                    //System.out.println(cell.getCTTc()); //解析格式
                    System.out.println(text); //表格的文本内容
                    str = str.append(text);


                }
            }
        }
        System.out.println("解析结束");
        System.out.println("本文档长度" + str.length());

        return str;

    }

    //读取pdf文件
    public String readPdf(String path){
        //String resultStr = null;
        FileInputStream is = null;
        PDDocument document = null;
        //boolean sort = false;
        int startPage = 1;
        int endPage = Integer.MAX_VALUE;
        String content = null;

        try {
            document = PDDocument.load(new File(path));
            PDFTextStripper pts = new PDFTextStripper();
            endPage = document.getNumberOfPages();
            System.out.println("结束页数"+ endPage);
            pts.setStartPage(startPage);
            pts.setEndPage(endPage);
            content = pts.getText(document);
            System.out.println("内容---"+ content);

            // 写txt文件,覆盖写入 --- 没用到
            //E:\IdeaProjects\002JAVA\resume\static\txt\123.txt
            File f = new File("E:\\IdeaProjects\\002JAVA\\resume\\static\\txt\\123.txt");
            if (!f.exists()){
                f.createNewFile();
            }
            System.out.println("写入txt完成");
            BufferedWriter output = new BufferedWriter(new FileWriter(f));
            output.write(content);
            output.flush();
            output.close();
//            is = new FileInputStream(path);
//            PDFParser parser = new PDFParser((RandomAccessRead) is);
//            parser.parse();
//            document = parser.getPDDocument();
//            PDFTextStripper stripper = new PDFTextStripper();
//            resultStr = stripper.getText(document);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if(is != null){
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (document != null){
                try {
                    document.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        String result1 = content.toString().replaceAll(" ","").replaceAll("\r\n","　"); //过滤 换行符
//        String result2; //过滤空格
//        result2 = result1.replaceAll("\\s*","");
        //result2 = result1.replace("\u0009|\u0008","");
        System.out.println("-----过滤好的结果-----"+result1);

        // 按行读取txt文本 ---- 没用到
        File file = new File("E:\\IdeaProjects\\002JAVA\\resume\\static\\txt\\123.txt");
        BufferedReader reader = null;
        String temp = null;
        int line = 1;
        List<String> txtList = new ArrayList<>();

        try {
            reader = new BufferedReader(new FileReader(file));
            while((temp=reader.readLine()) != null){
                System.out.println("行号：" + line + " 内容：" + temp);
                txtList.add(temp);
                line ++;

            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("txt的列表形式：" + txtList);
        System.out.println("崔娜的基本信息" + txtList.indexOf("自我描述"));


        return result1;

    }

    // pdf转word
    public void pdf2Word(String path){
        // 参考资料https://blog.csdn.net/qq_38935390/article/details/87607668

    }


    //word转xml（不分格式）
    public void word2XML(String path){
        //word 解析为xml格式的文档，按标签寻找word中的内容
    }

    //读Doc表格型文档
    public String readDocTableWord(String path){
        StringBuffer result = new StringBuffer();
        try {
            InputStream is = null;
            HWPFDocument docm = null;
            OutputStream out=null;
            //FileInputStream is = new FileInputStream("E:\\IdeaProjects\\JIANLI\\贺佳.doc"); //写入文件
            System.out.println("解析开始");
            is = new FileInputStream(path); //读取文件
            //POIFSFileSystem pfs = new POIFSFileSystem(is); /////
            docm = new HWPFDocument(is);   //转换doc文档is

            //System.out.println(docm);
            System.out.println("doc");

            //法2
            //获取doc表格的内容
            //String[] s = new String[200];
            Range range = docm.getRange(); //行
            TableIterator it = new TableIterator(range); //表迭代器
            //
            int index = 0;
            while(it.hasNext()){
                Table tb = it.next();  ////？？？
                for (int i = 0;i <tb.numRows();i++){ //小于行数
                    TableRow tr = tb.getRow(i);
                    for (int j=0;j < tr.numCells();j++){ //行内单元格不为空
                        TableCell td = tr.getCell(j);
                        //System.out.println(td);
                        for(int k = 0; k < td.numParagraphs();k++){ //段落数
                            Paragraph para = td.getParagraph(k);
                            String s = para.text();
                            //System.out.println("---doc---");
                            //System.out.println(para); //得到解析的格式XML????
                            //s[index] = para.text().trim();
                            //index ++;
                            result.append(s);
                            System.out.println("-----好好-----"+result);
                        }
                    }
                }
            }
            System.out.println("解析结束-------------------");
            System.out.println(result.toString().length()); //长度
        } catch (IOException e) {
            e.printStackTrace();
        }
        /*
        //获取docx表格的内容
        //获得表格内容
        InputStream is = null;
        XWPFDocument doc = null;
        System.out.println("解析开始");
        try {
            is = new FileInputStream(path); //读取文件
            doc = new XWPFDocument(is);   //转换doc文档is
        } catch (IOException e) {
            e.printStackTrace();
        }
        List<XWPFTable> tables = doc.getTables();
        List<String> retu = new ArrayList<String>();  //和String[] 的区别，以及范型接口的用法

        for (XWPFTable table : tables){
            //获取表格的行
            List<XWPFTableRow> rows = table.getRows();
            for (XWPFTableRow row : rows){
                //获取表格的每个单元格
                List<XWPFTableCell> tableCells = row.getTableCells();
                for (XWPFTableCell cell : tableCells){
                    //获取单元格内容
                    String text = cell.getText();
                    System.out.println("\n得到解析格式XML");
                    //System.out.println(cell.getCTTc()); //解析格式
                    System.out.println(text); //表格内容
                    retu.add(text);

                }
            }
        }

         */
        System.out.println("dd");
        //System.out.println(retu);
        //过滤掉回车和换行
        //String regEx = "\r|\n";
        String result1 = result.toString().replaceAll("\r",""); //过滤 换行符
        String result2; //过滤空格
        result2 = result1.replaceAll("\\s*","");
        //result2 = result1.replace("\u0009|\u0008","");
        System.out.println("----解析内部-----"+result2);
        //Matcher result2 = Pattern.compile(regEx).matcher(result.toString());
        //System.out.println("jieguo -------"+result2.toString().length());
        return result2;

    }

    //用正则匹配
    public void regEx(StringBuilder file,String rule){
        String result = "";
        StringBuilder str = file;

        String nameEx = "/^[\u4E00-\u9FA5]{2,5}$/"; //识别姓名-2-4个字符

        String sexEx = ""; //性别-男|女

        String ageEx = ""; //年龄-数字+[字符]

        String educationEx = "[教][育][背][景]"; //教育背景

        String advantageEx = ""; //个人优势

        String phoneReg = "(^1[3|4|5|7|8|9]\\d{9}$)|(^09\\d{8}$)"; //手机

        String emailEx = "\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}"; //邮箱

        String jobExperience = "[工][作][经][历]"; //工作经历
        String proiectExperience = "[项][目][经][历]"; //项目经历



        Pattern c = Pattern.compile(jobExperience);
        Matcher mc = c.matcher(str);

        if (mc.find()){
            String mcText = mc.group();
            int mcFrom = mc.start();
            int mcTo = mc.end();
            System.out.println("\n显示正则匹配结果");
            System.out.println(mcText);
            //System.out.println(mcText + "---" + mcFrom + "dd" + mcTo); //目标字符串的起，止位置



        }else{
            System.out.println("匹配失败");
        }
        //resultService = mc.replaceAll(""); //查找替换
        // System.out.println("过滤字符串\n"+resultService);
        System.out.println("开始匹配");
        System.out.println("解析:"+result);
        System.out.println("匹配完毕");

        //return resultService;
    }

    //获得各匹配结果
    // 方法公开有错吗？？？？？
    public void jieGuo(String path){
        String basicInformation,professionalSkill,jobExperience,projectExperience,eduExperience,selfEvaluate= "";
        String str1,str2,str3,str4,str5,str6,str7,str8,str9,str10 = null;
        String fileStr = readTable(path).toString(); //纯文本
        basicInformation = findString(fileStr,"基本信息","专业技能");
        System.out.println("基本信息---姓名"+basicInformation);
        str1 = findString(fileStr,"姓名","年龄");
        System.out.println("姓名》"+str1);
        str2 = findString(fileStr,"年龄","性别");
        System.out.println("年龄》"+str2);
        str3 = findString(fileStr,"性别","学历");
        System.out.println("性别》"+str3);
        str4 = findString(fileStr,"学历","电话");
        System.out.println("学历>"+str4);
        str5 = findString(fileStr,"电话","邮箱");
        System.out.println("电话》"+str5);
        str6 = findString(fileStr,"邮箱","籍贯");
        System.out.println("邮箱》"+str6);
        str7 = findString(fileStr,"籍贯","工作年限");
        System.out.println("籍贯》"+str7);
        str8 = findString(fileStr,"工作年限","应聘职位");
        System.out.println("工作年限》"+str8);
        str9 = findString(fileStr,"应聘职位","期望薪资");
        System.out.println("应聘职位》"+str9);
        str10 = findString(fileStr,"期望薪资","专业技能");
        System.out.println("期望薪资》"+str10);

        professionalSkill = findString(fileStr,"专业技能","工作经历");
        System.out.println("专业技能--"+professionalSkill);

        jobExperience = findString(fileStr,"工作经历","项目经历");
        System.out.println("工作经历-------------"+jobExperience);

        projectExperience = findString(fileStr,"项目经历","教育经历");
        System.out.println("项目经历--"+projectExperience);

        eduExperience = findString(fileStr,"教育经历","自我评价");
        System.out.println("教育经历--"+ eduExperience);

        selfEvaluate = findString(fileStr,"自我评价","NULL");
        System.out.println("自我评价---"+selfEvaluate);

    }
    //正则匹配
    //输入开始字符串和结束字符串，得到其之间的字符串
    public String findString(String str1,String start,String end){
        System.out.println("正则表达式");
//        String str = str1;
//        System.out.println("正则内部》过滤字符串"+str); //空格没有过滤掉
        String result = null;
        if(end != null) {
            String regex = start + "(.*)" + end;
            Matcher matcher = Pattern.compile(regex).matcher(str1);
            while (matcher.find()) {
                String s = matcher.group();
                result = s.substring(start.length(), s.length() - end.length());
                System.out.println("匹配结果---" + start + ":===" + result);
            }
        } else{
            //把最后的所有字符串作为最后一个块的值
            result = str1.substring(str1.indexOf(start) + 1);
        }
        //Matcher result = null;
//        String result = null;
//        String result1 = "";
//        int[] index = null;
//        for (int j = 0; j < start.length();j++) {
//            for (int k = 0; k < end.length(); k++) {
//                char en = end.charAt(k);
//                char st = start.charAt(j);
//                int flg = 0;
//                for (int i = 0; i < str.length(); i++) {
//                    char ch = str.charAt(i);
//                    char st = start.charAt();
//                    if ((int) st == (int) ch) {
//                        result1 = result1 + ch;
//                    } else{
//                        result = result + ch;
//                    }
//
                    //字符 字符串
                    //result = Pattern.compile(start).matcher(str);

//                }
//            }
//        }


        //System.out.println("所有字符串---" + str); //所有字符串

       // result = result1;
        return result;
    }
    // findString 多态方法
    // 传入过词性标注的词列表,结果字段名，开始字段，结束字段
    // 头+命名实体+尾 再进行匹配
    // 要提取的是一个完整的短语，在两个标点符号之间的，
    public String findString(List strList, String start,String nameEntity, String end){
        String result = null;
        String regex = start + "(.*)" + end;
        Matcher matcher = Pattern.compile(regex).matcher(strList.toString());
        while (matcher.find()){
            String s = matcher.group();
            result = s.substring(start.length(),s.length() - end.length());
        }
        return result;
    }

    public static void main(String[] args) {
        DealWordByPoi cwd = new DealWordByPoi();
        //cwd.init("E:/doc/a.docx", "E:\\IdeaProjects\\JIANLI\\王志辉 java开发工程师 两年.docx");
        //StringBuilder sb = null;
        //sb = cwd.readTable("E:\\IdeaProjects\\JIANLI\\【Java开发工程师 _ 上海15-24K】黄杨阳 4年.docx");
        //doc型文件
        //String rdt = cwd.readDocTableWord("E:\\IdeaProjects\\JIANLI\\java开发简历_何志成2.doc").toString();
        //System.out.println("doc解析结果");
        //System.out.println(rdt.length());
        //cwd.findString(rdt,"工作经验","项目经验");
        //这两个字段由用户输入，这样可以避免输入不精确的问题

        //cwd.readDocTableWord("E:\\\\IdeaProjects\\\\JIANLI\\\\王志辉 java开发工程师 两年.docx"); //解析docx为xml

        //List<String> file = new ArrayList<String>(Arrays.asList("王志辉",""," 21岁  |"," 男   |"," 本科   |"," 2年经验",""," 18037017565   |"," 18037017565@163.com"," ","" ," 个人优势","" ," 期望职位","" ," 专业技能","" ," 工作经历","   开封源码软件科技公司","   java开发工程师 | 开发部"," 2017.07—至今","" ," 项目经历","   点程网","   Java开发工程师"," 2018.07—2019.02","   开封新航道托福","   java开发工程师"," 2018.02—2018.05","   信誉楼百货","   java开发工程师", "2017.10—2018.04","" ," 教育经历","   许昌学院","   计算机科学与技术 | 本科"," 2013—2017"));
        //String file = "[王志辉, , 21岁   |, 男   |, 本科   |, 2年经验, , 18037017565   |, 18037017565@163.com, , , 个人优势, , 期望职位, , 专业技能, , 工作经历,   开封源码软件科技公司,   java开发工程师 | 开发部, 2017.07—至今, , 项目经历,   点程网,   Java开发工程师, 2018.07—2019.02,   开封新航道托福,   java开发工程师, 2018.02—2018.05,   信誉楼百货,   java开发工程师, 2017.10—2018.04, , 教育经历,   许昌学院,   计算机科学与技术 | 本科, 2013—2017]";
        //StringBuilder sb = cwd.readTable("");
        //String rule = "";
        //cwd.regEx(sb,rule);
        //正则匹配
        //docx型文件
        //String str = cwd.readTable("E:\\IdeaProjects\\JIANLI\\【Java开发工程师 _ 上海15-24K】黄杨阳 4年.docx").toString();
        //cwd.findString(str,"姓名","年龄");
        //cwd.jieGuo("E:\\IdeaProjects\\JIANLI\\【Java开发工程师 _ 上海15-24K】黄杨阳 4年.docx");
        //pdf
        //String cont = cwd.readPdf("E:\\IdeaProjects\\JIANLI\\JIANLIDOC\\【Java开发工程师 _ 上海15-24K】张思宇 2年.pdf");
//        ResultDao.addContINTEST(cont);

    }

    public List findSecondString(String uuid,List<String> attNameList,String content) {
        ArrayList<BasicInfo> list = new ArrayList();
        BasicInfo basicInfo = new BasicInfo();
        /*
        BasicInfo basicInfo = new BasicInfo();
        basicInfo.setName("姓名");
        list.add(basicInfo);
        basicInfo = new BasicInfo();
        basicInfo.setName("邮箱");
        list.add(basicInfo);
        basicInfo.setName("电话");
        list.add(basicInfo);
        basicInfo.setName("基本信息");
        list.add(basicInfo);
        basicInfo = new BasicInfo();
        basicInfo.setName("年龄");
        list.add(basicInfo);
        basicInfo = new BasicInfo();
        basicInfo.setName("性别");
        list.add(basicInfo);
        basicInfo = new BasicInfo();
        basicInfo.setName("学历");
        list.add(basicInfo);
        basicInfo = new BasicInfo();
        basicInfo.setName("籍贯");
        list.add(basicInfo);
        basicInfo = new BasicInfo();
        basicInfo.setName("工作年限");
        list.add(basicInfo);
        basicInfo = new BasicInfo();
        basicInfo.setName("应聘职位");
        list.add(basicInfo);
        basicInfo = new BasicInfo();
        basicInfo.setName("期望薪资");
        list.add(basicInfo);
        */
        //属性关键字列表
        //list = attName;

        List<BasicInfo> newList = new ArrayList(); // 把参数中的属性字段加入到基本信息对象中
        for(String s : attNameList){
            basicInfo = new BasicInfo();
            basicInfo.setName(s);
            list.add(basicInfo);
        }

        for(BasicInfo s:list){ //确定关键字在简历中
            if(content.indexOf(s.getName()) >- 1){  //content为空值时不进入
                s.setSorder(content.indexOf(s.getName())); //属性名在字符串中首次出现的位置（关键字在字符串中）
                newList.add(s); //把关键字在文档中的位置添加到属性关键字对象中
            }
        }
        //BasicInfo addOn =
        //newList.add();
        newList.sort(new BeanComparator("sorder")); //对属性名按sorder列排序

        int count=0;
        Map map = new HashMap();
        for(BasicInfo s:newList){
            count++;
            map.put(count,s.getName());
        }
        count=0;

        List resultList = new ArrayList();
        for(BasicInfo s:newList){
            count++;
            String st = s.getName();
            String end = (String)map.get(count+1);

            String str = findString(content,st,end);
            //方法的返回值

            BasicInfo bi = new BasicInfo();

            bi.setInfoName(st);
            bi.setInfoValue(str); //写入类属性中
            bi.setUuid2(uuid);
            resultList.add(bi); //写结果列表中
           System.out.println(str);
        }

        return resultList;
    }
}

