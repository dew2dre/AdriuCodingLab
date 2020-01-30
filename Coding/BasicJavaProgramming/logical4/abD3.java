//Sample code the Logical Not (!) operator
//Sample code using a Not (!) logical operator
package logical4;
class  ABd3{
	public static void main (String [] args ){
		boolean  creditLoad = false;
		boolean courseCompletion=false;
		if(!creditLoad|courseCompletion){
			System.out.println("he or she ,is ready to graduate from college");
		}
		else { 
			System.out.println("he or she ,is not ready to graduate from college");
		}
	}
}