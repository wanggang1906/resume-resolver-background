package com.emit.resume.view;

import lombok.Data;

/**
 * 统一返回的数据格式类型
 * @param <T> data的类型
 */
@Data
public class ResultView<T> { //范型类
    /**  错误代码*/
    private Integer errCode;
    /**  错误信息*/
    private String errMsg;
    /**  返回的数据*/
    private T data; //data成员变量的类型为T,T的类型由外部指定

    private Object feature;

    public ResultView(){
        this.errCode = 0;
    }

    public ResultView(Integer errCode, String errMsg) {
        this.errCode = errCode;
        this.errMsg = errMsg;
    }
    public ResultView(T data) {
        this.errCode = 0;
        this.data = data;//返回页面的数据
    }

    public ResultView(Integer errCode) {
        this.errCode = errCode;
    }
}
