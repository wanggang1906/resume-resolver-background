package com.emit.resume.util;
import com.alibaba.fastjson.JSONObject;

public class ATest01 {

    public void jsonToItem(){
        String jsonString = "";
        //String jsonString = "{\"name\":\"zhangsan\",\"password\":\"zhangsan123\",\"email\":\"10371443@qq.com\"}";
        JSONObject jsonObject = JSONObject.parseObject(jsonString);
        System.out.println(jsonObject);

    }

    public static void main(String[] args){
        ATest01 at = new ATest01();
        at.jsonToItem();

    }
}
