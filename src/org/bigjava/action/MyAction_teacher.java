package org.bigjava.action;

import java.util.ArrayList;
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
	List<Teacher> list = new ArrayList<Teacher>();
	private String danceclass;
	
	public String getDanceclass() {
		return danceclass;
	}

	public void setDanceclass(String danceclass) {
		this.danceclass = danceclass;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	
	 public void setTeacherMapperBiz(TeacherMapperBiz teacherMapperBiz) {
		this.teacherMapperBiz = teacherMapperBiz;
	}
	 
	 


	public List<Teacher> getList() {
		return list;
	}

	public void setList(List<Teacher> list) {
		this.list = list;
	}
	  

	/**
	 * 分页查询老师，并在指导员页面显示
	 * @return
	 */
	public String findPage_teacher() {
		System.out.println("findPage_teacher");
		int pageNo=1;
		if(page!= null) {
			System.out.println("page不为空");
			pageNo=page.getPageno();
		}else {
			System.out.println("page为空");
		}
		int pageSize=3;
		int totalCount = teacherMapperBiz.findCount_teacher();
		Page page=new Page(pageNo,pageSize,totalCount);
		list=teacherMapperBiz.findPage_teacher(page);
		if(list!=null){
			System.out.println("list不为空");
			HttpServletRequest request=ServletActionContext.getRequest();
			request.getSession().setAttribute("list", list);
			request.getSession().setAttribute("page", page);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	
	/**
	 * 根据班级分页查询学生
	 * @return
	 */
	public String findStudentByClass() {
		System.out.println("findStudentByClass");
		int pageNo=1;
		if(page!= null) {
			System.out.println("page不为空");
			pageNo=page.getPageno();
		}else {
			System.out.println("page为空");
		}
		int pageSize=3;
		int totalCount = teacherMapperBiz.findCount_student();
		Page page=new Page(pageNo,pageSize,totalCount);
		page.setCanShu1(danceclass);
		list=teacherMapperBiz.findStudentByClass(page);
		if(list!=null){
			System.out.println("list不为空");
			HttpServletRequest request=ServletActionContext.getRequest();
			request.getSession().setAttribute("list", list);
			request.getSession().setAttribute("page", page);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
