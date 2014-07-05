import comp102x.IO;

public class InputDemo

/**
 * @author Lewis
 * 
 */
{
    public static void main(String[] args) 
    {
        IO.output("Enter degree in Celsius: ");
        double celsius = IO.inputDouble();
        double fahrenheit = celsius * (9/5) + 32;
        IO.outputln(celsius + " celsius is " + fahrenheit + " degrees in fahrenheit");
    }
    
}