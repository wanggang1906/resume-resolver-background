package com.emit.resume.domain;

import lombok.Data;

@Data
public class WordOfHanLP {
    // 用来分割被词性标注之后的单位，返回词内容和其词性

    // 词内容
    private String word;
    // 词性标注
    private String wordProperty;
}
