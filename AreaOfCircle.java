import java.util.Scanner;

class AreaOfCircle
{
	public static void main
	{
		Scanner radius = new Scanner(System.in);
		float pi = 3.14;	
		
		System.out.println("Enter radius of the circle to calculate its area:");
		int rad = radius.nextInt();
		
		area = pi * rad * rad;

		System.out.println("Area of circle for given radius is : " + area);
  
		radius.close();
	}
}