package com.emit.resume.util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

// redis连接工具类
public class ATest02_RedisUtil {

    // 服务器IP地址
    private static String ADDR = "localhost";
    // 端口
    private static int PORT = 6379;
    // 密码
    private static String AUTH = "123456";
    // 连接池最大连接数
    private static int MAX_ACTIVE  = 1024;
    // 一个pool最多有多少各状态为idle空闲，默认为8
    private static int MAX_IDLE = 200;
    // 最大等待时间默认为-1，永不超时，若超过，则抛出
    private static int MAX_WAIT = 10000;
    // 连接超时时间
    private static int TIMEOUT = 10000;
    // 在borrow一个实例时，是否提前进行validate操作，若为true，则得到jedis实例是可用的
    private static boolean TEST_ON_BORROW = true;

    private static JedisPool jedisPool = null;

    // 初始化连接池
    static {
        try {
            JedisPoolConfig config = new JedisPoolConfig();
            config.setMaxTotal(MAX_ACTIVE);
            config.setMaxIdle(MAX_IDLE);
            config.setMaxWaitMillis(MAX_WAIT);
            config.setTestOnBorrow(TEST_ON_BORROW);
            jedisPool = new JedisPool(config,ADDR,PORT,TIMEOUT,AUTH);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    // 获取Jedis实例
    public synchronized static Jedis getJedis(){
        // synchronized修饰静态方法，控制线程同步，其锁住的是扩号中的对象
        try {
            if (jedisPool != null){
                Jedis resource = jedisPool.getResource();
                return resource;
            }else {
                return null;
            }
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    // 释放资源
    public static void returnResource(final Jedis jedis){
        if (jedis != null){
            jedisPool.getResource();
            //jedisPool.returnResource(jedis);
            System.out.println("释放资源");
        }
    }

}
