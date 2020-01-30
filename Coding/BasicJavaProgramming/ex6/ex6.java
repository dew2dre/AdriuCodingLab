//Sample switch statement(with an out of range int )
package ex6;
class ex6{
	public static void main (String [] args ){
		int day =10;
		switch (day)
		{
			case 1:
			System.out.println("Perform Monday's task");
			break;
			case 2:
			System.out.println("Perform Tuesday's task");
			break;
			case 3:
				System.out.println("Perform Wednesday's task");	
				
				
				break;
			case 4:
				System.out.println("Perform Thursday's task");
				
				
				break;
			case 5:
				System.out.println("Perform Friday's task");
				
				
				break;
			case 6:
				System.out.println("Perform Friday night task");
				
				
				break;
			case 7:
				System.out.println("Perform Saturday's task");
				
				
				break;
			case 8:
				System.out.println("Perform Sunday's task");
				break;
			default:
				System.out.println("You are out of range");
				break;
		}
		
}
}