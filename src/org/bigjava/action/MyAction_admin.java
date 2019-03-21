package org.bigjava.action;

import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.bigjava.action.tool.AllUTL;
import org.bigjava.action.tool.AllUserTool;
import org.bigjava.action.tool.Page;
import org.bigjava.biz.AdminMapperBiz;
import org.bigjava.entitys.Management;

import org.bigjava.entitys.DanceClass;

import org.bigjava.entitys.News;
import org.bigjava.entitys.SchoolInformation;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MyAction_admin extends ActionSupport implements ModelDriven<News>{
	
	
	private AllUTL	allUTL;
	private AdminMapperBiz adminMapperBiz;	//spring注入adminMapperBiz
	private Page page;
	private Management management;
	private AllUserTool allUserTool;
   
	

	public void setAllUserTool(AllUserTool allUserTool) {
		this.allUserTool = allUserTool;
	}



	public Management getManagement() {
		return management;
	}
	public void setManagement(Management management) {
		this.management = management;
	}



	private News news = new News();
	private User user = new User();
	private DanceClass dClass = new DanceClass();
	
	
	public void setdClass(DanceClass dClass) {
		this.dClass = dClass;
	}

	private SchoolInformation schoolIf = new SchoolInformation();
	
	public void setSchoolIf(SchoolInformation schoolIf) {
		this.schoolIf = schoolIf;
	}
	public void setAdminMapperBiz(AdminMapperBiz adminMapperBiz) {
		this.adminMapperBiz = adminMapperBiz;
	}
	public void setAllUTL(AllUTL allUTL) {
		this.allUTL = allUTL;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public News getModel() {
		// TODO Auto-generated method stub
		return news;
	}
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}


	/**
	 * 	学生分页
	 * @return
	 */
	 public String findPage() {
//		int pageNo=1;
//		if(page!= null) {
//			System.out.println("page不为空");
//			pageNo=page.getPageno();
//		}else {
//			System.out.println("page为空");
//		}
//		int pageSize=1;
//		int totalCount = myServlet.findCount();
//		Page page=new Page(pageNo,pageSize,totalCount);
//		List<Student> list=myServlet.findPage(page);
//		if(list!=null){
//			HttpServletRequest request=ServletActionContext.getRequest();
//	        request.setAttribute("list", list);
//	        request.setAttribute("page", page);
//	        return SUCCESS;
//	     }else{
//	        return ERROR;
//	     }
		 return SUCCESS;
	  }
	  
	  /**
	   * 	添加新闻
	   * @return
	   * @throws Exception
	   */
	  
	  public String addNew() throws Exception {
		  
		  adminMapperBiz.addNew(news);
		  
		  return SUCCESS;
	  }
	 /**
	  * 	淇敼寰呭鎵圭敤鎴风殑瀹℃壒鐘舵��
	  * @return
	  */
	  public String updateUserAs() {
		  
		  
		  return SUCCESS;
	  }
	  
	  /**
	   * 	查分页询未审批的老师
	   * @return String
	   */
	  public String findUserWait() {
		  int pageNo=1;
			if(page!= null) {
				System.out.println("page不为空");
				pageNo=page.getPageno();
			}else {
				System.out.println("page为空");
			}
			int pageSize=1;
			int totalCount = adminMapperBiz.findWaitCount();
			Page page=new Page(pageNo,pageSize,totalCount);
			List<User> list= adminMapperBiz.findUserWait(page);
			if(list!=null){
				HttpServletRequest request=ServletActionContext.getRequest();
		        request.setAttribute("list", list);
		        request.setAttribute("page", page);
		        return SUCCESS;
		     }else{
		        return ERROR;
		     }
	  }
	  /**
	   * 	分页查询所有老师
	   * @return
	   */
	  public String findTeacher() {
		  int pageNo=1;
			if(page!= null) {
				System.out.println("page不为空");
				pageNo=page.getPageno();
			}else {
				System.out.println("page为空");
			}
			int pageSize=1;
			int totalCount = adminMapperBiz.findTeacherCount();
			Page page=new Page(pageNo,pageSize,totalCount);
			List<User> list= adminMapperBiz.findTeacher(page);
			if(list!=null){
				HttpServletRequest request=ServletActionContext.getRequest();
		        request.setAttribute("list", list);
		        request.setAttribute("page", page);
		        return SUCCESS;
		     }else{
		        return ERROR;
		     }
	  }
	  
	  /**
	   * 	修改已审批的老师的审批状态
	   * @return
	   */
	  public String updateTeacherWait() {
		  adminMapperBiz.updateTeacherWait(user);
		  return SUCCESS;
	  }
	  /**
	   * 	添加学校相关信息
	   * @return
	   */
	  public String addSchoolIf() {
		  
		  adminMapperBiz.addSchoolIf(schoolIf);
		  
		  return SUCCESS;
	  }
	  
	  /**
	   * 	老师申请通过后添加班级
	   * @return
	   */
	  public String addDClass() {
		  
		   adminMapperBiz.addDClass(dClass);
		  return SUCCESS;
	  }
	  
	  
	  /**
	   * 	添加二级管理员
	   * @return
	   */
	  public String adminadd() {
		 System.out.println(management);
		  adminMapperBiz.adminadd(management);
		  return SUCCESS;
		  
	  }
	  
	  /*
	   *删除二级管理员
	   */
	  public String admindel() {
		  adminMapperBiz.admindel();
		return SUCCESS;
		  
	  }
	  
	  /**
	   * 修改二级管理员
	   */
	  int id=2;
	  public String adminupdate() {
		  System.out.println("hahaha");
		 List<Management>list= adminMapperBiz.adminupdate(id);
		 System.out.println(list);
		 HttpServletRequest request=ServletActionContext.getRequest();
         request.setAttribute("listi", list);
		return SUCCESS;
		  
	  }
	  /*
	   * 淇敼
	   */
	
	  public String adminupdate1() {
		  adminMapperBiz.adminupdate1(management);
		return SUCCESS;
		  
	  }
	  
	  /*
	   *分页查询管理员
	   */
	
	  
	  public String adminfind() {
		  System.out.println("findPage_admin");
			int pageNo=1;
			if(page!= null) {
				System.out.println("page不为空");
				pageNo=page.getPageno();
			}else {
				System.out.println("page为空");
			}
			int pageSize=1;
			int totalCount = adminMapperBiz.findCount_admin();
			Page page=new Page(pageNo,pageSize,totalCount);
			List<Management> list=adminMapperBiz.findPage_admin(page);
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
