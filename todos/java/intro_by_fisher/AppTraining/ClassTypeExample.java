/**
 * @author Lewis
 * @version 1.0
 */

public class ClassTypeExample
{
    public static void main(String args[])
    {
        int a, b;
        a = 5;
        b = a;
        System.out.println ("a = " + a + ", b = " + b);
        a = 7;
        // a & b are distinct integer
        System.out.println ("a = " + a + ", b = " + b);
        
        
        StringBuffer c, d;
        c = new StringBuffer ("cats");
        d = new StringBuffer ("frogs");
        
        System.out.println("c = " + c + ", d = " + d);
        c = d;
        d.append (" and dogs");
        // c & d reference the same object after assignment
        System.out.println ("c = " + c + ", d = " + d ); 
    }
}