package org.bigjava.action.tool;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class ImageUtil {
	
	
	/**
	 * 获得项目路径并追加路径
	 * @param imageName
	 * @return
	 */
	public String getImgSrc(String imageName) {
		File directory = new File("");	// 参数为空
		String imgsrc = null;
		try {
			imgsrc = directory.getCanonicalPath()+"\\WebContent\\images\\"+imageName;	//项目路径+""
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			System.out.println(imgsrc);
			return imgsrc;
		}
		
	}
	/**
	 * 把图片保存到项目路径的images目录下
	 * @param imageSrc
	 * @param imageName
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
		    
		return image;
	}
	
}
