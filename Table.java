/*
Write a program to print table of any user given number.
*/

import java.util.Scanner;

class table
{
	public static void main(String[] args)
	{	
		int table;
		Scanner number = new Scanner(System.in);

		System.out.println("Enter a number to get its table:");
		int number =  number.nextInt();

		for(int i=0; i<11; i++)
		{
			table=number * i;
			System.out.println(number+" "+"*"+" "+i +" "+= table);
		}
	scanner.close();
	}
}