package com.custom;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTagHandler extends TagSupport{
	
	
	 @Override
	public int doStartTag() throws JspException {
		 
		 
		 try {
			 
			 JspWriter out=pageContext.getOut();
			 
			 out.print("<h1>Tag created</h1>");
			 
		 }catch(Exception e) {
			 
			 e.printStackTrace();
		 }
		 
	
		return 0;
		
	}
	
}
