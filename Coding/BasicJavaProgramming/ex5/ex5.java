//Sample code the Logical Not (!) operator
//Sample code the logical AND (&&) logical operator
//Sample code the logical OR (||) logical operator
package ex5;
class  Ex5{
	public static void main (String [] args ){
		int  creditLoad = 120;
		boolean courseCompletion=true;
		if(creditLoad > 110 || !courseCompletion){
				
			System.out.println("he or she ,is ready to graduate from college");
		}
		else { 
			System.out.println("he or she ,is not ready to graduate");
		}
		if(creditLoad> 110  && courseCompletion){
			System.out.println("he or she ,maybe ready to graduate from college");
		}
	}
}
