/** MyFirstWithComments.java
 * 
 * @author Fisher
 * @version 1.0
 **/

 import java.util.Date; // Allows us to use class name
 
 public class MyFirstWithComments
 {
     /**
      * Returns String with given message preceded by a data stamp
      * 
      * @param args Array of Strings corresponding to command line 
      * @return Original message with date stamp preceding it
      */
     
     public static String getDatedMessage (String msg)
     {
         return "("+ new Date() + ") " + msg;
     }
     
     /**
      * The main method displays welcome message
      * 
      * @param args Array of Strings correspondong to command line
      */
     public static void main (String args[])
     {
         System.out.println (getDatedMessage ("Welcome to java!"));
     }
 }