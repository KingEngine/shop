package com.shop.utils;


import java.util.Map;
import java.util.TreeMap;

public class MD5Util
{
	
	public static String signMap(String[] md5Map, String securityKey, String type)
	{
		String[] md5ReqMap = new String[]
		{ "MerNo", "BillNo", "Amount", "ReturnURL" };
		String[] md5ResMap = new String[]
		{ "MerNo", "BillNo", "Amount", "Succeed" };
		Map<String, String> map = new TreeMap<String, String>();
		if (type.equals("REQ"))
		{
			for (int i = 0; i < md5ReqMap.length; i++)
			{
				map.put(md5ReqMap[i], md5Map[i]);
			}
		}
		else if (type.equals("RES"))
		{
			for (int i = 0; i < md5ResMap.length; i++)
			{
				map.put(md5ResMap[i], md5Map[i]);
			}
		}
		MD5 md5 = new MD5();
		String strBeforeMd5 = joinMapValue(map, '&') + md5.getMD5ofStr(securityKey);
		return md5.getMD5ofStr(strBeforeMd5);
		
	}
	
	public static String joinMapValue(Map<String, String> map, char connector)
	{
		StringBuffer b = new StringBuffer();
		for (Map.Entry<String, String> entry : map.entrySet())
		{
			b.append(entry.getKey());
			b.append('=');
			if (entry.getValue() != null)
			{
				b.append(entry.getValue());
			}
			b.append(connector);
		}
		return b.toString();
	}
}
