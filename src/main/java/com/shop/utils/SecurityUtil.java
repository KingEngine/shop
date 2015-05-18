package com.shop.utils;

import java.io.UnsupportedEncodingException;

import org.apache.commons.codec.digest.DigestUtils;

public class SecurityUtil {
	/**
	 * MD5加密算法
	 * @param content
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public static String encryptMD5(String content) throws UnsupportedEncodingException {
		return DigestUtils.md5Hex(content.getBytes("utf-8")).toUpperCase();
	}
}
