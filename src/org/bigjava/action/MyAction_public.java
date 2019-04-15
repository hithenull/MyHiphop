package org.bigjava.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.bigjava.action.tool.ImageUtil;
import org.bigjava.action.tool.Page;
import org.bigjava.biz.MapperBiz;
import org.bigjava.entitys.Addresss;
import org.bigjava.entitys.Management;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MyAction_public extends ActionSupport implements ModelDriven<Student> {
	
	private User user;
	private MapperBiz mapperBiz;	//注入mapperBiz
	private String jobapplication;
	private Page page;
	private Student student=new Student();
	private Teacher teacher = new Teacher();
	private Management management = new Management();
	private String loginname;
	private String loginpassword;
	private String verification;
	

	public String getVerification() {
		return verification;
	}
	public void setVerification(String verification) {
		this.verification = verification;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getLoginpassword() {
		return loginpassword;
	}
	public void setLoginpassword(String loginpassword) {
		this.loginpassword = loginpassword;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public String getJobapplication() {
		return jobapplication;
	}
	public void setJobapplication(String jobapplication) {
		this.jobapplication = jobapplication;
	}
	public void setMapperBiz(MapperBiz mapperBiz) {
		this.mapperBiz = mapperBiz;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		 this.student=student;
	}
	

	
	//测试
//	public String add() throws Exception  {
//		Student student=new Student();
//		student.setStudentName(student1.getStudentName());
//		student.setPhone(student1.getPhone());
//		allUserTool.setStudent(student);
//		mapperBiz.add(allUserTool);
//		return "success";
//		
//	}

	@Override
	public Student getModel() {
		// TODO Auto-generated method stub
		return student;	
	}
	/**
	 *	用户注册
	 * @return
	 * @throws Exception
	 */
	public String register() throws Exception{
		System.out.println(verification);
		user.setJobapplication(user.getJobapplication()+","+jobapplication);
		ImageUtil i = new ImageUtil();
		String[] arr = user.getImagesrc().split("\\\\");
		user.setImagesrc(i.copyImage("C:\\Users\\yclyc\\Desktop\\teacher\\"+arr[2], user.getUsername()+".jpg"));
		System.out.println(user);
		 if(user!=null){
	            mapperBiz.insertUser(user);
	            return SUCCESS;
	            
	        }else{
	        	System.out.println("Error");
	            return ERROR;
	            
	        }
	}
	
	/**
	 *	登陆页面，老师，学生，管理员登陆
	 * @return
	 * @throws Exception
	 */
    public String login() throws Exception{
    	HttpServletRequest request=ServletActionContext.getRequest();
    	
    	student.setStudentNumber(loginname);
    	student.setPassword(loginpassword);
    	teacher.setTeacherNumber(loginname);
    	teacher.setTeacherPassword(loginpassword);
    	management.setAccount(loginname);
    	management.setPassword(loginpassword);
    	
    	if((student = mapperBiz.login_student(student))!=null) {
    		request.getSession().setAttribute("student", student);
    		return SUCCESS;
    	}else if((teacher = mapperBiz.login_teacher(teacher))!=null) {
    		request.getSession().setAttribute("teacher", teacher);
    		System.out.println(teacher.getDanceAge());
    		return SUCCESS;
    	}else if((management = mapperBiz.login_admin(management))!=null){
    		request.getSession().setAttribute("management", management);
    		return "admin";
    	}else {
    		return ERROR;
    	}
    	
    	
     }
    /**
     * 	新闻页面显示新闻
     * @return
     */
    public String showNews() {
    	
    	int pageNo=1;
		if(page!= null) {
			System.out.println("page不为空");
			pageNo=page.getPageno();
		}else {
			System.out.println("page为空");
		}
		int pageSize=5;
		int totalCount = mapperBiz.findNewsAll();
		Page page=new Page(pageNo,pageSize,totalCount);
		List<User> list= mapperBiz.findNews(page);
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
     * 	获得用户的地址信息
     * @return
     */
    public String getaddress() {
    	HttpServletRequest request=ServletActionContext.getRequest();
    	student = (Student) request.getSession().getAttribute("student");
    	teacher = (Teacher) request.getSession().getAttribute("teacher");
    	if(student!=null) {
    		Addresss addresss = mapperBiz.getAddress(student.getAddress_id());
    		request.setAttribute("address", addresss);
    		return "update";
    	}
    	if(teacher!=null) {
    		System.out.println(teacher.getAddress_id());
    		Addresss addresss = mapperBiz.getAddress(teacher.getAddress_id());
    		request.setAttribute("address", addresss);
    		return "updateTeacher";
    	}
    	return SUCCESS;
    }
    public String updateStudent() {
    	
    		mapperBiz.updateStudent(student);
    	return SUCCESS;
    }

    public String hello() {
    	verification = "123456";
    	ImageUtil i = new ImageUtil();
    	
    	HttpServletRequest request=ServletActionContext.getRequest();
    	request.getSession().setAttribute("verification", verification);
    	System.out.println("hello");
    	return SUCCESS;
    }
}
