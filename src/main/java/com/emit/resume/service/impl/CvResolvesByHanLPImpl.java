package com.emit.resume.service.impl;

import com.hankcs.hanlp.corpus.tag.Nature;
import com.hankcs.hanlp.seg.common.Term;

import java.util.ArrayList;
import java.util.List;

public class CvResolvesByHanLPImpl {



    public List<Term> findTargetWordInHanLPListOfProperty(String targetWordProperty, List<Term> hanLPList){
        // 按词性提取特定词
        Nature nature = null;
        String word = null;
        List<Term> resultList = new ArrayList<>();
        int juli = 0; // 没用到
        for(Term hanLP : hanLPList){
            // 词的内容
            word = hanLP.word;
            // 词性标注
            nature = hanLP.nature;
            String name = nature.toString();
            // 词在文本中的起始位置
            juli = hanLP.offset;
            System.out.println(word + "----" + nature + "----" + juli);
            if(targetWordProperty.equals(name)){
                resultList.add(hanLP);
            }

        }
        return resultList;
    }



    public static void main(String[] arges){

    }
}
