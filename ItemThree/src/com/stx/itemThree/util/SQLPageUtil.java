package com.stx.itemThree.util;

import com.stx.itemThree.model.PageBean;

public class SQLPageUtil {

	public static String getPageSql(String sql, PageBean pb) {
		StringBuilder sb = new StringBuilder();
		sb.append("select * from (select rownum rn, t.* from(");
		sb.append(sql);
		sb.append(")t) where rn between ");
		sb.append(pb.getStartIndex());
		sb.append(" and ");
		sb.append(pb.getEndIndex());
		System.out.println("page sql:" + sb.toString());
		return sb.toString();
	}
	
}
