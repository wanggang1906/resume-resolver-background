package com.emit.resume.util;

public class maptoobject {

    /*public static Object map2Object(Map<String, Object> map, Class<?> clazz) {
        if (map == null) {
            return null;
        }
        Object obj = null;
        try {
            obj = clazz.newInstance();

            Field[] fields = obj.getClass().getDeclaredFields();
              for (Field field : fields) {
                int mod = field.getModifiers();
                if (Modifier.isStatic(mod) || Modifier.isFinal(mod)) {
                    continue;
                }
                String fieldName = field.getName();
                if(!Character.isLowerCase(fieldName.charAt(0)))
                    fieldName = (new StringBuilder()).append(Character.toLowerCase(fieldName.charAt(0))).append(fieldName.substring(1)).toString();
                field.set(obj, map.get(fieldName));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return obj;
    }*/


}

