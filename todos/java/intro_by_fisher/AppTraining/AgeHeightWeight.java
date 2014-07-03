/**
 * @author Lewis
 * 
 */

public class AgeHeightWeight 
{
    public static void main (String args[])
    {
        int age = 30;
        float height = 5.75F; // will get error "possible loss of precision required float" without explict F
        double weight = 140.9;
        
        System.out.println("Age: " + age);
        System.out.println("Height: " + height + " feet");
        System.out.println("Weight: " + weight + " pounds");
    }
}