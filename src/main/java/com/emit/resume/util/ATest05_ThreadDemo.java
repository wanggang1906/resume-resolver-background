package com.emit.resume.util;

// 三个售票窗口同时出售20张票。循环买票
public class ATest05_ThreadDemo {
    public static void main(String[] args) {
        TicketOffice ticketOffice = new TicketOffice(new Object(),20);
        new Thread(ticketOffice,"窗口1").start();
        new Thread(ticketOffice,"窗口2").start();
        new Thread(ticketOffice,"窗口3").start();
        System.out.println("主方法调用结束。");
    }

}

class TicketOffice implements Runnable{
    private final Object object;
    private int ticketNum;
    public TicketOffice(Object object,int ticketNum){
        this.object = object;
        this.ticketNum = ticketNum;
    }

    @Override
    public void run() {
        while (ticketNum > 0){
            synchronized (object){
                System.out.println("进入同步锁中，开始逻辑处理。");
                if (ticketNum <= 0){
                    System.out.println(Thread.currentThread().getName() + "没票了。。");
                }else {
                    System.out.println(Thread.currentThread().getName() + "卖出了一张票");
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

    }
}

















