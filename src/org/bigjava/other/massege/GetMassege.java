package org.bigjava.other.massege;

public class GetMassege {

	private static String Uid = "yuankai";
	
	private static String Key = "d41d8cd98f00b204e980";
	
	public String toMassege(String phong) {
		
		String mg = yzm();
		
		HttpClientUtil client = HttpClientUtil.getInstance();
		
		int result = client.sendMsgUtf8(Uid, Key, "验证码："+mg, phong);
		
		if(result>0){
			System.out.println("that ok :"+result);
		}else{
			System.out.println(client.getErrorMsg(result));
		}
		
		return mg;
	}
	
	public String yzm() {
		int a = (int)((Math.random()*9+1)*100000);
		String a1 = a+"";
		return a1;
	}
	
}