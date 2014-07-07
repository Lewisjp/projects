/**
 * @author Lewis
 * @version 1.0
 */

public class ObjectComparison 
{
    public static void main (String args[])
    {
        String s1 = "hello", s2 = "hello";
        System.out.println ("After Init. to constant string");
        if (s1 == s2) System.out.println (s1 + " == " + s2);
        if (s1.equals (s2)) System.out.println (s1 + " equals() " + s2);
        
        s1 = new String ("hello");
        s2 = new String ("hello");
        System.out.println ("After Allocation ");
        if (s1 == s2) System.out.println (s1 + " == " + s2);
        else System.out.println (s1 + " != " + s2);
        if (s1.equals (s2)) System.out.println (s1 + " equals() " + s2);
        
        System.out.println ("After Assignment");
        s1 = s2;
        if (s1 == s2) System.out.println (s1 + " == " + s2);
        else System.out.println (s1 + " != " + s2);
        if (s1.equals (s2)) System.out.println (s1 + " equals() " + s2);
        
        if (s1 instanceof String) System.out.println ("s1 is a String");
        if (s2 instanceof String) System.out.println ("s2 is a String");
    }
}