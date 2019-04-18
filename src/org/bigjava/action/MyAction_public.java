package org.bigjava.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.bigjava.action.tool.AllUserTool;
import org.bigjava.action.tool.ImageUtil;
import org.bigjava.action.tool.Page;
import org.bigjava.biz.MapperBiz;
import org.bigjava.entitys.Addresss;
import org.bigjava.entitys.DanceClass;
import org.bigjava.entitys.KeBiao;
import org.bigjava.entitys.Management;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MyAction_public extends ActionSupport implements ModelDriven<Student>{
	
	private User user;
	private MapperBiz mapperBiz;	//注入mapperBiz
	private String jobapplication;
	private Page page;
	List<DanceClass> list = new ArrayList<DanceClass>();
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<DanceClass> getList() {
		return list;
	}
	public void setList(List<DanceClass> list) {
		this.list = list;
	}
	AllUserTool aut = new AllUserTool();
	public AllUserTool getAut() {
		return aut;
	}
	public void setAut(AllUserTool aut) {
		this.aut = aut;
	}
	private String loginname;
	private String loginpassword;
	
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
	private Student student=new Student();
	private Teacher teacher = new Teacher();
	private Management management = new Management();
	

	
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

	/**
	 *	用户注册
	 * @return
	 * @throws Exception
	 */
	public String register() throws Exception{
		System.out.println("??????????????????????register");
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
    	request.getSession().removeAttribute("student");
    	request.getSession().removeAttribute("teacher");
    	aut.getStudent().setStudentNumber(loginname);
    	aut.getStudent().setPassword(loginpassword);
    	aut.getTeacher().setTeacherNumber(loginname);
    	aut.getTeacher().setTeacherPassword(loginpassword);
    	aut.getManagement().setAccount(loginname);
    	aut.getManagement().setPassword(loginpassword);
    	
    	if((student = mapperBiz.login_student(aut.getStudent()))!=null) {
    		request.getSession().setAttribute("student", student);
    		aut.setStudent(student);
    		DanceClass danceClass = mapperBiz.getDanceClass(aut);
    		request.getSession().setAttribute("danceClass", danceClass);
    		return SUCCESS;
    	}else if((teacher = mapperBiz.login_teacher(aut.getTeacher()))!=null) {
    		request.getSession().setAttribute("teacher", teacher);
    		aut.setTeacher(teacher);
    		DanceClass danceClass = mapperBiz.getDanceClass(aut);
    		request.getSession().setAttribute("danceClass", danceClass);
    		return SUCCESS;
    	}else if((management = mapperBiz.login_admin(aut.getManagement()))!=null){
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
		int pageSize=10;
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
     * 	获得用户的地址信息以及用户的班级
     * @return
     */
    public String getaddress() {
    	HttpServletRequest request=ServletActionContext.getRequest();
    	if((Student) request.getSession().getAttribute("student")!=null) {
    		aut.setStudent((Student) request.getSession().getAttribute("student"));
    		Addresss addresss = mapperBiz.getAddress(aut.getStudent().getAddress_id());
    		request.setAttribute("address", addresss);
    		System.out.println(">>>>>>>>>>>>update");
    		return "update";
    	}
    	if((Teacher) request.getSession().getAttribute("teacher")!=null) {
    		aut.setTeacher((Teacher) request.getSession().getAttribute("teacher"));
    		System.out.println(teacher.getAddress_id());
    		Addresss addresss = mapperBiz.getAddress(aut.getTeacher().getAddress_id());
    		request.setAttribute("address", addresss);
    		return "updateTeacher";
    	}
    	return ERROR;
    }
    
    
    /**
     * 	异步加载短信验证码
     * @return
     */
    public String hello() {
    	HttpServletRequest request=ServletActionContext.getRequest();
    	String phone = (String) request.getAttribute("phone");
    	//System.out.println(phone);
    	//GetMassege gm = new GetMassege();
    	//verification = "aaaaaa";
    	//request.getSession().setAttribute("verification", verification);
    	System.out.println("hello");
    	return SUCCESS;
    }
    /**
     * 查询该用户所在班级的课表
     * @param kebiao
     */
    public void getKeBiao(KeBiao kebiao) {
    	HttpServletRequest request=ServletActionContext.getRequest();
    	kebiao = mapperBiz.getKeBiao(kebiao);
    	request.setAttribute("kebiao", kebiao);
    }
    
	@Override
	public Student getModel() {
		// TODO Auto-generated method stub
		return student;
	}
	
    public String getAllUser() {
    	HttpServletRequest request=ServletActionContext.getRequest();
    	List<User> list = mapperBiz.getAllUser();
    	if(list!=null) {
    		request.setAttribute("list", list);
    	}
    	return SUCCESS;
    }
    
    public String findPage_danceclass() {
		System.out.println("findPage_danceclass");
		int pageNo=1;
		if(page!= null) {
			System.out.println("page不为空");
			pageNo=page.getPageno();
		}else {
			System.out.println("page为空");
		}
		int pageSize=4;
		int totalCount = mapperBiz.findCount_danceclass();
		Page page=new Page(pageNo,pageSize,totalCount);
		list = mapperBiz.findPage_danceclass(page);
		if(list!=null){
			System.out.println("list不为空");
			HttpServletRequest request=ServletActionContext.getRequest();
			System.out.println(list);
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
    
    public String updateStudent() {
    	HttpServletRequest request=ServletActionContext.getRequest();
    	Student student1 = new Student();
    	student1 = (Student) request.getSession().getAttribute("student");
    	System.out.println(">>>>>>>>"+student);
    	mapperBiz.updateStudent(student);
    	student=mapperBiz.find_idStudent(student1.getStudent_id());
    	System.out.println("成功"+student);
    	request.getSession().removeAttribute("student");
    	request.getSession().setAttribute("student", student);
    	return SUCCESS;
    }
    
    public String break_break() {
    	HttpServletRequest request=ServletActionContext.getRequest();
    	request.getSession().invalidate();
    	return SUCCESS;
    }
}
