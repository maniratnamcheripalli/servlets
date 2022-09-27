package com.custom;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

public class TagSecond extends TagSupport{

	@Override
	public int doStartTag() throws JspException {
		try {
			
			JspWriter jw=pageContext.getOut();
			jw.println("<b>Hello Second Custom Tag<b>");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	

}
