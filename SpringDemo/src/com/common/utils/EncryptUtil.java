package com.common.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import sun.misc.BASE64Encoder;

/**
 * 加密工具类
 * @author 
 *
 */
public final class EncryptUtil {
	
	
    /**
     * 利用MD5进行加密
     * @param str  待加密的字符串
     * @return  加密后的字符串
     */
    public static String encoderByMd5(String str){
    	return encoder(str, null, "MD5");
    }
    
    /**
     * 利用MD5进行加密 加上盐
     * @param str
     * @param salt
     * @return
     */
    public static String encoderByMd5(String str, byte[] salt){
    	return encoder(str, salt, "MD5");
    }
    
    /**
     * 利用SHA进行加密
     * @param str  待加密的字符串
     * @return  加密后的字符串
     */
    public static String encoderBySHA(String str){
        return encoder(str, null, "SHA");
    }
    
    /**
     * 利用SHA进行加密 加上盐
     * @param str
     * @param salt
     * @return
     */
    public static String encoderBySHA(String str, byte[] salt){
    	return encoder(str, salt, "SHA");
    }
    
    
	public static String encoder(String str, byte[] salt, String encoder){
    	//确定计算方法
        MessageDigest msgDigest;
        String newstr = "";
		try {
			msgDigest = MessageDigest.getInstance(encoder);
			if(salt != null && salt.length > 0){
				msgDigest.update(salt);
			}
			BASE64Encoder base64en = new BASE64Encoder();
			//加密后的字符串
			newstr = base64en.encode(msgDigest.digest(str.getBytes("utf-8")));
		} catch (NoSuchAlgorithmException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
        return newstr;
    }
    
    /**
     * 生成盐
     * @return
     */
    public static byte[] createSalt(){
    	byte[] salt = new byte[16];
    	try{
    		SecureRandom random = SecureRandom.getInstance("SHA1PRNG");
    		random.nextBytes(salt);
    		return salt;
    	}catch(NoSuchAlgorithmException e){
    		e.printStackTrace();
    	}
    	return null;
    }
    
    /**
     * 判断用户密码是否正确
     * @param newpasswd  用户输入的密码
     * @param oldpasswd  数据库中存储的密码－－用户密码的摘要
     * @return
     */
    public static boolean decodeByMd5(String newpasswd,String oldpasswd){
        if(encoderByMd5(newpasswd).equals(oldpasswd))
            return true;
        else return false;
    }
    
    public static boolean decodeByMd5(String newpasswd,String oldpasswd, byte[] salt){
        if(encoderByMd5(newpasswd, salt).equals(oldpasswd))
            return true;
        else return false;
    }
    
    public static boolean decodeBySHA(String newpasswd,String oldpasswd){
        if(encoderBySHA(newpasswd).equals(oldpasswd))
            return true;
        else return false;
    }
    
    public static boolean decodeBySHA(String newpasswd, String oldpasswd, byte[] salt){
        if(encoderBySHA(newpasswd, salt).equals(oldpasswd))
            return true;
        else return false;
    }
}
