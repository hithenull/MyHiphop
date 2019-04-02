package test;

import java.io.File;
import java.io.IOException;

import org.bigjava.action.tool.ImageUtil;
import org.bigjava.dao.Mapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {

	public static void main(String[] args){
		// TODO Auto-generated method stub
		ImageUtil i = new ImageUtil();
		try {
			i.copyImage("C:\\Users\\yclyc\\Desktop\\images\\1.jpg", "d.jpg");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
