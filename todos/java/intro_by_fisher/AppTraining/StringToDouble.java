/**
 * @author Lewis
 * @version 1.0
 */

import java.io.*;

public class StringToDouble
{
    public static void main (String args[]) throws NumberFormatException
    {
        String s = "1.23";
        s = s + 5;
        System.out.println(s); // "1.235"
        
        double num = Double.parseDouble(s);
        num = num + 5;
        System.out.println(num); // 6.235
    }
}