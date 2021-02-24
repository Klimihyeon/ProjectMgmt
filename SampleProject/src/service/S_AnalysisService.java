package service;

public class S_AnalysisService {

	
	public S_AnalysisService(){}
	private static S_AnalysisService instance;
	public static S_AnalysisService getInstance(){
		if(instance == null){
			instance = new S_AnalysisService();			
			}
			return instance;
		}
	
	public int  me1 (){
//		System.out.println("=======================================");
		System.out.println("---------------------------------------");
		System.out.println("1.매출분석\t\t2.\t\t");
		System.out.println("---------------------------------------");
	
	
	return 1;
}
}
