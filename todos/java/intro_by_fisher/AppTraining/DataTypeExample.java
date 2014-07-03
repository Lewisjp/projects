/**
 * @author Jeremy
 * @version 1.0
 */


public class DataTypeExample
{
    public static void main(String args[])
    {
        char a = 'a';
        short b = 32767;
        int c = -40000;
        long d = 1009L;
        boolean e = false;
        float f = -1234.567F; // Note suffix necessary!
        double g = 1234.7898;
        
        System.out.print ('a');
        System.out.print (" = ");
        System.out.println (a);
        System.out.println ("b = " + b);
        System.out.println ("c = " + c);
        System.out.println ("d = " + d);
        System.out.println ("e = " + e);
        System.out.println ("f = " + f);
        System.out.println ("g = " + g);
    }
}