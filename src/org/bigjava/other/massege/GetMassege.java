package org.bigjava.other.massege;

public class GetMassege {

	private static String Uid = "hello_a";
	
	private static String Key = "d41d8cd98f00b204e980";
	
	public int toMassege(String phong) {
		
		int mg = yzm();
		
		HttpClientUtil client = HttpClientUtil.getInstance();
		
		int result = client.sendMsgUtf8(Uid, Key, "验证码："+mg, phong);
		
		if(result>0){
			System.out.println("that ok :"+result);
		}else{
			System.out.println(client.getErrorMsg(result));
		}
		
		return mg;
	}
	
	public int yzm() {
		int a = (int)((Math.random()*9+1)*100000);
		return a;
	}
	
}