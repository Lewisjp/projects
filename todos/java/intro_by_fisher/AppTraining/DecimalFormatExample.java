/**
 * @author Lewis
 * 
 */

import java.text.DecimalFormat;  // allows you to set a custom decimal format

public class DecimalFormatExample 
{
    public static void main (String args[])
    {
        DecimalFormat df = new DecimalFormat ("###.000");  // declare decimal format 'df'
        System.out.println (df.format(1));                 // number w/ with 3 decimal places 
        System.out.println (df.format(1.2));               // 1.200
        System.out.println (df.format(1.23));              // 1.230
        System.out.println (df.format(1.234));
        System.out.println (df.format(1.2345));
        System.out.println (df.format(1.23456));           // 1.235
        System.out.println (df.format(4321.1234));         // 4321.123
        
        
        DecimalFormat qf = new DecimalFormat ("#.0");
        System.out.println (qf.format(-23.458));    // Rounded up to -23.5
        
        System.out.println ("12" + 3);  // 123
        System.out.println (12 + 3);    // 15
    }
}

