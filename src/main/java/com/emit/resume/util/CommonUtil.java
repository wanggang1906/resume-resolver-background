package com.emit.resume.util;

import java.util.UUID;

public class CommonUtil {
    /**
     * 生产uuid
     * @return
     */
    public static String getUuid() {
        //简历标识码
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

}
