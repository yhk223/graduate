package com.ssm.util;

import java.security.MessageDigest;

public class PasswordSalt {
    public static String Addsalt(String password,String salt){
        StringBuilder builder=new StringBuilder();
        try{
            String msg=password+salt;
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            byte[] bytes = md5.digest(msg.getBytes());
            for (byte aByte : bytes) {
                String data = Integer.toHexString(aByte & 0xFF);
                if (data.length()==1){
                    builder.append("0"+data);
                }else {
                    builder.append(data);
                }

            }
        } catch (Exception e){
                e.printStackTrace();
        }
        return builder.toString();
    }
}
