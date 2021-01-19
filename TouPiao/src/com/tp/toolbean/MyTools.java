package com.tp.toolbean;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MyTools {
	/*
	 * @功能 将int型数据转换为String型数据
	 * @参数 num为要转换的int型数据
	 * @返回值 String类型
	 */
	public static String intToStr(int num) {
		return String.valueOf(num);
	}
	/*
	 * @功能 比较时间
	 * @参数 today当前时间，temp为上次投票时间。这两个参数都属以毫秒显示的时间
	 * @返回值 String类型
	 */
	public static String compareTime(long today,long temp) {
		int limitTime = 60;		//设置限制时间为60分钟
		long count = today - temp;		//计算当前时间与上次投票时间相差的毫秒
		if (count <= limitTime*60*1000){	//如果相差小于等于60分钟（1分钟=60秒，1秒=1000毫秒）
			return "no";
		} else {
			return "yes";	//如果相差大于60分钟
		}
	}
	/*
	 * @功能 将int型数据转换为String型数据
	 * @参数 num为要转换的int型数据
	 * @返回值 String类型
	 */
	public static String formatDate(long ms) {
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String strDate = format.format(date);
		return strDate;
	}
}
