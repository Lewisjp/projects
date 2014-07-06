/**
 * @author Lewis
 * @version 1.0
 */

import java.io.*; 

public class Greetings
{
    public static void main (String[] args) throws IOException
    {
        // supports a method that is convenient to use for reading from keyboard 
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        
        System.out.print ("What is your name? ");
        String s;
        s = br.readLine();  // readLine() method reads an entire line from System.in and returns a String 
        System.out.println("Greetings, " + s + "!");
    }
}