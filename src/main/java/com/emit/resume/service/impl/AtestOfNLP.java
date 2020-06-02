package com.emit.resume.service.impl;

import com.emit.resume.domain.WordOfHanLP;
import com.emit.resume.util.DealWordByPoi;
import com.hankcs.hanlp.HanLP;
import com.hankcs.hanlp.corpus.tag.Nature;
import com.hankcs.hanlp.seg.Dijkstra.DijkstraSegment;
import com.hankcs.hanlp.seg.NShort.NShortSegment;
import com.hankcs.hanlp.seg.Segment;
import com.hankcs.hanlp.seg.common.Term;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class AtestOfNLP {
    /**
     * HanLP笔记
     * HanLP中有一系列的开箱即用的静态分词器，以Tokenizer结尾，HanLP.segment是对StandardTokenizer.segment的封装
     *参考：https://www.cnblogs.com/fclbky/p/7872866.html
     * 源码分析：https://github.com/hankcs/HanLP
     *
     */

    public void testHanLP(){
        // 读取简历的txt文件
        File file = new File("E:\\IdeaProjects\\002JAVA\\resume\\static\\txt\\工作经历.txt");
        StringBuilder re = new StringBuilder();
        try {
            BufferedReader br = new BufferedReader(new FileReader(file));
            String s = null;
            while((s = br.readLine()) != null){
                re.append(System.lineSeparator() + s);
            }
            br.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String cvWordStr = re.toString();
        System.out.println("简历文件内容：" + cvWordStr + "\n");

        // 中文分词，词性标注
        //List<Term> stermList = HanLP.segment("中文分词测试");
        // 简历内容 cvWordStr
        // 分词

        AtestOfNLP at = new AtestOfNLP();
        List<Term> stermList = HanLP.segment(cvWordStr);
        System.out.println("分词和词性标注-----" + stermList + "\n");
        System.out.println("最大长度--" + stermList.size());
        System.out.println("按位置提取特定词--" + stermList.get(10));


        // 机构名识别
        String word = "2018.10~至今 上海睿渠网络技术有限公司 前端工程师\n" +
                "\uF075 独自搭建收银台站点和活动站点、维护商城站点、开发后台管理系统，并主要负责收银台项目；\n" +
                "\uF075 包含移动端适配、微信和支付宝支付等功能；";
        // 机构名识别开启
        Segment segment = HanLP.newSegment().enableOrganizationRecognize(true).enableOffset(true);
        List<Term> complList = segment.seg(word);
        //System.out.println(complList);

        // 按特定标识提取目标词
        System.out.println("按词性提取特定词---");
        System.out.println(at.findTargetWordInHanLPListOfProperty("n",complList));
        System.out.println("----提取完成----");

        // 提取公司名 -- 机构名
        System.out.println("---提取的公司名---");
        System.out.println(at.findTargetWordInHanLPListOfProperty("nt",complList));
        System.out.println("----提取完成----");

        // 提取时间
        System.out.println("提取的时间---");
        System.out.println(at.findTargetWordInHanLPListOfProperty("m",complList));

        // 提取公司名并返回其内容和位置
        System.out.println("@@@@@特定词的位置@@@@@");
        for (Term term : at.findTargetWordInHanLPListOfProperty("n",complList)){
            System.out.println(term.word);
            System.out.println(term.offset);
        }

        // N-最短路径分词--速度比最短路径分词慢，但效果要好一些
        // enableCustomDictionary-自定义词典关闭   enablePlaceRecognize-地名识别开启     enableOrganizationRecognize-机构名识别开启
        Segment nShortSegment = new
                NShortSegment().enableCustomDictionary(false).enablePlaceRecognize(true).enableOrganizationRecognize(true);
        Segment shortestSegment = new
                DijkstraSegment().enableCustomDictionary(false).enablePlaceRecognize(true).enableOrganizationRecognize(true);
        String[] testCase = new String[]{
                "今天，刘志军案的关键人物,山西女商人丁书苗在市二中院出庭受审。",
                "刘喜杰石国祥会见吴亚琴先进事迹报告团成员"
        };
        for (String sentence : testCase){
            System.out.println("N-最短分词：" + nShortSegment.seg(sentence) + "\n最短路分词：" + shortestSegment.seg(sentence));
        }

        System.out.println("-------CV------" + shortestSegment.seg(cvWordStr));

        // CRF分词

        // 用户自定以词典

        // 人名识别
        String[] testCase1 = new String[]{
                "签约仪式前，秦光荣、李纪恒、仇和等一同会见了参加签约的企业家。",
                "王国强、高峰、汪洋、张朝阳光着头、韩寒、小四",
                "张浩和胡健康复员回家了",
                "王总和小丽结婚了",
                "编剧邵钧林和稽道青说",
                "这里有关天培的有关事迹",
                "龚学平等领导,邓颖超生前",

        };
        Segment segment1 = HanLP.newSegment().enableNameRecognize(true);
        System.out.println("中国人名识别：");
        for (String sen : testCase1){
            List<Term> termList = segment1.seg(sen);
            System.out.println(termList);
        }

        // 音译人名的识别
        String[] testCase3 = new String[]{
                "一桶冰水当头倒下，微软的比尔盖茨、Facebook的扎克伯格跟桑德博格、亚马逊的贝索斯、苹果的库克全都不惜湿身入镜，这些硅谷的科技人，飞蛾扑火似地牺牲演出，其实全为了慈善。",
                "世界上最长的姓名是简森·乔伊·亚历山大·比基·卡利斯勒·达夫·埃利奥特·福克斯·伊维鲁莫·马尔尼·梅尔斯·帕特森·汤普森·华莱士·普雷斯顿。",
        };
        Segment segment3 = HanLP.newSegment().enableTranslatedNameRecognize(true);
        for (String sentence : testCase3)
        {
            List<Term> termList = segment3.seg(sentence);
            System.out.println(termList);
                 }

        // 关键字提取
        // 文本，关键字个数
        List<String> keyWordList = HanLP.extractKeyword(cvWordStr,5);
        System.out.println("关键字提取：---" + keyWordList);

        // 自动摘要
        List<String> sentenceList = HanLP.extractSummary(cvWordStr,3);
        System.out.println("自动摘要：---" + sentenceList);

        // 短语提取
        List<String> phraseList = HanLP.extractPhrase(cvWordStr,10);
        System.out.println("短语提取：---" + phraseList);

        // 依存句法分析
         //List<String> ls = HanLP.parseDependency(cvWordStr);

        // 同型不同词的词性 --- 会报 data加载失败的错误
        //System.out.println(NLPTokenizer.analyze("我的希望是希望张晚霞的背影被晚霞映红").translateLabels());

        // 调用DealWordByPoi类中的findString方法查找特定字符
        DealWordByPoi dwb = new DealWordByPoi();
        // 用已近标注好的词进行匹配
        String dealWord = dwb.findString(stermList,"","","");
    }

    public WordOfHanLP partitionHanLPWordElement(String originalWord){
        //至今/d --- 把这样的List按照 / 分割为两个单位
        WordOfHanLP word = new WordOfHanLP();
        // 通过正则分割--- 不用这种方法
        // 通过list的split方法
        String[] result = originalWord.split("/");
        System.out.println(result);
        // 词的内容
        word.setWord(result[0]);
        // 词性
        word.setWordProperty("/" + result[1]);
        System.out.println(word);
        return word;
    }


    public List<Term> findTargetWordInHanLPListOfProperty(String targetWordProperty, List<Term> hanLPList){
        // 按照词性提取特定词
        Nature nature = null;
        String word = null;
        // 距离字符串头的距离
        int headDistance = 0;
        List<Term> resultList = new ArrayList<>();

        for(Term hanLP : hanLPList){
            // 词的内容
            word = hanLP.word;
            // 词性标注
            nature = hanLP.nature;
            String name = nature.toString();
            // 词在文本中的起始位置
            headDistance = hanLP.offset;
            System.out.println(word + "---" + nature + "---" + headDistance);
            if(targetWordProperty.equals(name)){
                resultList.add(hanLP);
            }

        }
        return resultList;
    }


    public static void main(String[] arges){
        AtestOfNLP rnlp = new AtestOfNLP();
        rnlp.testHanLP();
        //rnlp.partitionHanLPWordElement("至今/d");

    }
}
