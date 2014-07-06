/**
 * @author Lewis
 * @verison 1.0
 */

public class StringToInt
{
    public static void main (String args[]) throws NumberFormatException
    {
        String s = "123";
        s = s + 5;
        System.out.println(s); // "1235"
        
        int num = Integer.parseInt(s);
        num = num + 5;
        System.out.println(num); // 1240
    }
}