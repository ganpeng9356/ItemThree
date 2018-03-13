package com.stx.itemThree.util;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
/**
 * 这个checkSumBuilder的参考示例，请在官网上服务器端API上查看，有一个计算checkSum的实例
 */

public class Test {

	  //发送验证码的请求路径URL
    private static final String
            SERVER_URL="https://api.netease.im/sms/sendcode.action";
    //网易云信分配的账号，请替换你在管理后台应用下申请的Appkey
    private static final String 
            APP_KEY="39fa8af104bb4fb5303724e40b1eaa37";
    //网易云信分配的密钥，请替换你在管理后台应用下申请的appSecret
    private static final String APP_SECRET="14c93ad65c10";
    //随机数
    private static final String NONCE="123456";
    //短信模板ID
    private static final String TEMPLATEID="3922035";
    //手机号
   // private static final String MOBILE="15095829356";
    //验证码长度，范围4～10，默认为4
    private static final String CODELEN="6";
	 public static void main(String[] args) throws Exception {
        message("15095829356");
	    }
	 public static String message(String mobile) throws Exception{
		 DefaultHttpClient httpClient = new DefaultHttpClient();
	        HttpPost httpPost = new HttpPost(SERVER_URL);
	        String curTime = String.valueOf((new Date()).getTime() / 1000L);
	        /*
	         * 参考计算CheckSum的java代码，在上述文档的参数列表中，有CheckSum的计算文档示例
	         */
	        String checkSum = CheckSumBuilder.getCheckSum(APP_SECRET, NONCE, curTime);
	        // 设置请求的header
	        httpPost.addHeader("AppKey", APP_KEY);
	        httpPost.addHeader("Nonce", NONCE);
	        httpPost.addHeader("CurTime", curTime);
	        httpPost.addHeader("CheckSum", checkSum);
	        httpPost.addHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
	        // 设置请求的的参数，requestBody参数
	        List<NameValuePair> nvps = new ArrayList<NameValuePair>();
	        /*
	         * 1.如果是模板短信，请注意参数mobile是有s的，详细参数配置请参考“发送模板短信文档”
	         * 2.参数格式是jsonArray的格式，例如 "['13888888888','13666666666']"
	         * 3.params是根据你模板里面有几个参数，那里面的参数也是jsonArray格式
	         */
	        nvps.add(new BasicNameValuePair("templateid", TEMPLATEID));
	        nvps.add(new BasicNameValuePair("mobile", mobile));
	        nvps.add(new BasicNameValuePair("codeLen", CODELEN));
	       // System.out.println(nvps.get(0));
	        httpPost.setEntity(new UrlEncodedFormEntity(nvps, "utf-8"));

	        // 执行请求
	        HttpResponse response = httpClient.execute(httpPost);
	        /*
	         * 1.打印执行结果，打印结果一般会200、315、403、404、413、414、500
	         * 2.具体的code有问题的可以参考官网的Code状态表
	         */
	        String s=EntityUtils.toString(response.getEntity(), "utf-8");
	     System.out.println(s);
         String[] a = s.split("\\}");
         System.out.println(a[0]);
         
         String[] b = a[0].split("\\:");
         String[] h = b[3].split("\\\"");
         System.out.println(h[1]);
         return h[1];
	 }
}
