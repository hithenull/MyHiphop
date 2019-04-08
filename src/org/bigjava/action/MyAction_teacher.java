package org.bigjava.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.bigjava.action.tool.Page;
import org.bigjava.biz.TeacherMapperBiz;
import org.bigjava.entitys.Teacher;

import com.opensymphony.xwork2.ActionSupport;

public class MyAction_teacher extends ActionSupport{
	
	private Page page;
	private TeacherMapperBiz teacherMapperBiz; //注入teacherMapperBiz
	
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	 public void setTeacherMapperBiz(TeacherMapperBiz teacherMapperBiz) {
		this.teacherMapperBiz = teacherMapperBiz;
	}
	 
	 

	public String findPage_teacher() {
		 System.out.println("findPage_teacher");
			int pageNo=1;
			if(page!= null) {
				System.out.println("page不为空");
				pageNo=page.getPageno();
			}else {
				System.out.println("page为空");
			}
			int pageSize=4;
			int totalCount = teacherMapperBiz.findCount_teacher();
			Page page=new Page(pageNo,pageSize,totalCount);
			List<Teacher> list=teacherMapperBiz.findPage_teacher(page);
		  if(list!=null){
			  System.out.println("list不为空");
	             HttpServletRequest request=ServletActionContext.getRequest();
	             request.setAttribute("list", list);
	             request.setAttribute("page", page);
	             return SUCCESS;
	         }else{
	             return ERROR;
	         }
	  }
	  

	
}
