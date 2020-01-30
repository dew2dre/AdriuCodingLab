package ysc;
import java.util.Scanner;
// Simple Scanner code
class Ysc{
	public static void main (String [] args ){	
	Scanner addition = new Scanner (System.in);
	System.out.println("Addition Calculator.Please enter a number");
	int number1 = addition.nextInt();
		System.out.println("Thanks! Now enter a second number");
		int number2 = addition.nextInt();
		int c = number1 + number2;
		System.out.println("The sum of these two numbers is:" + c);
	}
}