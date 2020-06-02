package com.emit.resume;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringRunner.class)
@SpringBootTest
@WebAppConfiguration
// 测试类的占位符
public class ResumeApplicationTests {

    @Test
    public void contextLoads() {
        System.out.println("这是在加载测试类。。。");
    }

    @Test
    public void tes1(){
        System.out.println("这是测试2.。。。");
    }

}
