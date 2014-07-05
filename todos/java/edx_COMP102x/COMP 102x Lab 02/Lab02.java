import comp102x.IO;
/**
 * @author Jeremy
 * 
 */


public class Lab02
{
    
    public static void multiply()
    {
        // Please write your code after this line
        // Set variables
        int x;
        int y;
        int Answer;
        
        // Ask user for input
        IO.output("Enter an integer, x: ");
        x = IO.inputInteger();
        IO.output("Enter an interger, y: ");
        y = IO.inputInteger();
        
        // compute & display results 
        Answer = x * y;
        IO.output("Answer = " + Answer);
        
    }
    
    public static void calculateTriangleArea()
    {
        // Please write your code after this line
        // Set variables
        double width;
        double height;
        double triangleArea;
        
        // Ask user for input
        IO.output("Enter the width of the triangle: ");
        width = IO.inputDouble();
        IO.output("Enter the height of the triangle: ");
        height = IO.inputDouble();
        
        // compute & display results
        triangleArea = width * height / 2;
        IO.output("The triangle area = " + triangleArea);
        
        
        
        
    }
    
    public static void solveQuadraticEquation()
    {
        // Please write your code after this line
        // Set variables
        double x;
        double a;
        double b;
        double c;
        double firstRoot;
        double secondRoot;
        
        // Ask user for input
        IO.output("Enter a: ");
        a = IO.inputDouble();
        IO.output("Enter b: ");
        b = IO.inputDouble();
        IO.output("Enter c: ");
        c = IO.inputDouble();
        
        // compute 
        double discriminant; 
        discriminant = Math.sqrt(b*b - 4 *a * c); // get the square root of the discriminant for the formula
        firstRoot = (-b + discriminant)/(2*a);
        secondRoot = (-b - discriminant)/(2*a);
        
        // display results 
        IO.output("First solution for x = " + firstRoot);
        IO.outputln("Second solution for x = " + secondRoot);
        
    }
}
