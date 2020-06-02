package com.emit.resume.service;

import com.emit.resume.domain.CvInfo;
import com.emit.resume.domain.CvKeyword;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

//简历解析接口
public interface CvResolves {
    //Rule
    ArrayList<String> readRule(HttpServletRequest request);
    //docx
    String docxFile(String path);

    void addCsvKeyword(CvKeyword ck);

    List<CvInfo> pageShow(Integer pageNum,String type,String value);

    List<CvInfo> searchCv(String searchKey);



}

