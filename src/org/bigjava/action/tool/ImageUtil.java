package org.bigjava.action.tool;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class ImageUtil {
	
	String imgsrc="";
	
	/**
	 * 获得项目路径并追加路径
	 * @param imageName
	 * @return
	 */
	public String getImgSrc(String imageName) {
		
		try {
			imgsrc = getPath()+"images\\"+imageName;			//项目路径+""
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			return imgsrc;
		}
		
	}
	/**
	 * 把图片保存到项目路径的images目录下
	 * @param imageSrc		图片的名字
	 * @param imageName		图片的路径
	 * @return 
	 * @throws Exception
	 */
	public String copyImage(String imageSrc,String imageName) throws Exception {
		
		String image = getImgSrc(imageName);
		FileInputStream in =  new FileInputStream(imageSrc);
		FileOutputStream outputStream = new FileOutputStream(image);
		   System.out.println(image);
		byte [] b = new byte[in.available()];   
		while (in.read(b)!=-1) {
		        outputStream.write(b);
		}
		
		//关闭流  关闭流原则：先开后关，后开先关。
		outputStream.close();
		in.close();
		    
		return "/images/"+imageName;
	}
	
	
	public String getPath() {
		String rootPath=getClass().getResource("\\").getFile().toString(); 
		String[] arr = rootPath.split("/");
		for(int i=1;i<arr.length-6;i++) {
			imgsrc = imgsrc + arr[i]+"\\";
		}
		System.out.println(imgsrc);
		return imgsrc;
	}
}
