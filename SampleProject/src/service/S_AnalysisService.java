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
	
	
	
	
	
}
