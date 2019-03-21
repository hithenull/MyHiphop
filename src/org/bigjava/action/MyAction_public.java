package org.bigjava.action;

import org.bigjava.action.tool.AllUserTool;
import org.bigjava.biz.MapperBiz;
import org.bigjava.entitys.Student;
import org.bigjava.entitys.Teacher;
import org.bigjava.entitys.User;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MyAction_public extends ActionSupport implements ModelDriven<Student> {
	
	private AllUserTool allUserTool;
	private User user;
	private MapperBiz mapperBiz;	//注入mapperBiz
	private String name;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setMapperBiz(MapperBiz mapperBiz) {
		this.mapperBiz = mapperBiz;
	}
	private Student student1=new Student();
	
	public void setAllUserTool(AllUserTool allUserTool) {
		this.allUserTool = allUserTool;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Student getStudent() {
		return student1;
	}
	public void setStudent(Student student) {
		 this.student1=student1;
	}
	

	
	//测试
	public String add() throws Exception  {
		System.out.println("����action,�õ�����"+student1.getStudentName());
		Student student=new Student();
		student.setStudentName(student1.getStudentName());
		student.setPhone(student1.getPhone());
		System.out.println("���student"+student);
		allUserTool.setStudent(student);
		mapperBiz.add(allUserTool);
		return "success";
		
	}

	@Override
	public Student getModel() {
		// TODO Auto-generated method stub
		return student1;	
	}
	
	public String register() throws Exception{
		 if(user!=null){
	            System.out.println("ע���ֵ���յ�");
	            mapperBiz.insertUser(user);
	            System.out.println("actionע��ɹ�");
	            return SUCCESS;
	            
	        }else{
	            System.out.println("ע���ֵû�н��յ�");
	            return ERROR;
	            
	        }
	}
    public String login() throws Exception{
        
    	if(name.equals("")&&password.equals("")) {
    		Student student=new Student();
        	student.setStudentName(name);
        	student.setPassword(password);
        	Teacher teacher=new Teacher();
        	teacher.setTeacherName(name);
        	teacher.setTeacherPassword(password);	
        	if(mapperBiz.findStudentById(student)) {
        		
        		return "success";
            }else if(mapperBiz.findTeacherById(teacher)) {
            	
            	return "error";
          
               }
    	  }
		return "input";
     }
}