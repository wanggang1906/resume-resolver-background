package com.emit.resume.util;

public class ATest06_ThreadDemo2
{

    public static void main(String[] args)
    {
        TicketOffice ticketOffice = new TicketOffice(new Object(), 20);
        new Thread(ticketOffice, "窗口1").start();
        new Thread(ticketOffice, "窗口2").start();
        new Thread(ticketOffice, "窗口3").start();
        System.out.println("主方法调用结束。");
    }
}

class TicketOffice2 implements Runnable {
    private Object object;

    private int ticketNum;

    public TicketOffice2(Object object, int ticketNum) {
        this.object = object;
        this.ticketNum = ticketNum;
    }

    @Override
    public void run() {
        while (ticketNum > 0) {
            synchronized (object) {
                System.out.println("进入同步锁，调用处理逻辑。");
                if (ticketNum <= 0) {
                    System.out.println(Thread.currentThread().getName() + "没有票了");
                } else {
                    System.out.println(Thread.currentThread().getName() + "卖出了一张票，剩余" + --ticketNum + "张票");
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }
}

