package com.emit.resume.util;

// 公用一个资源池
public class ATest08_ThreadDemo4 {

    public static void main(String[] args) {
        Object object = new Object();
        new Thread(new PrintRunnable(object,1)).start();
        new Thread(new PrintRunnable(object,2)).start();
        new Thread(new PrintRunnable(object,3)).start();
        System.out.println("主方法调用结束。");
    }

}

class PrintRunnable implements Runnable {
    private static volatile int printNum = 0;

    private Object object;

    private int threadId;

    public PrintRunnable(Object object, int threadId) {
        super();
        this.object = object;
        this.threadId = threadId;
    }

    // 线程输出语句
    @Override
    public void run() {
        while (printNum < 75) {
            // 同步锁
            synchronized (object) {
                if (printNum / 5 % 3 + 1 == threadId) {
                    for (int i = 0; i < 5; i++) {
                        System.out.println("线程" + threadId + ":" + (++printNum));
                    }
                    object.notifyAll();
                } else {
                    try {
                        object.wait();
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }
}
