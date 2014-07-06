/**
 * @author Lewis
 * @version 1.0
 */

public class StringExample
{
    public static void main (String args[])
    {
        String s1 = new String ("Moe");
        s1.concat (" Mario");               // fails to save this action to a variable
        System.out.println (s1);            // "Moe"
        
        // concat returns copy of original string with new string appended
        s1 = s1.concat (" Larry");          // " Larry" is added to the end of the assigned variable
        System.out.println (s1);            // "Moe Larry"
        
        System.out.println ("s1 length = " + s1.length() ); // s1.length() = # of chars in variable s1
        
        String s2 = "Moe Larry";
        
        if (s1 == s2)
            System.out.println ("Same");
        else
            System.out.println ("Different");
        
        StringBuffer sb1 = new StringBuffer (s1);  // assigns value of String s1 to StringBuffer sb1
        // inserts the String representation of the argument into the string bugger 
        sb1.insert (3, " Curley");                 // inserts " Curely" after the 3rd char in sb1
        System.out.println ("sb1 = " + sb1);
        
        sb1.setLength(9);                   // Cuts down string to 9 char places 
        // appends the string representation of the argument to the string buffer 
        sb1.append (" Shemp");
        System.out.println ("sb1 = " + sb1);
    }
}