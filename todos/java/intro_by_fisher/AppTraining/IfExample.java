/**
 * @author Lewis
 * @version 1.0
 */

import java.io.*;

public class IfExample
{
    public static void main (String args[]) throws java.io.IOException
    {
        // Buffered Reader class supports a method that takes input from the keyboard
        // InputStreamReader class handles translation from bytes to characters 
        // System.in initializes it
        BufferedReader br = new BufferedReader (new InputStreamReader (System.in));
        
        String line;
        System.out.println ("First Number: ");
        //  readLine() method reads an entire line from from System.in and returns a string
        line = br.readLine();
        double first = Double.parseDouble(line);
        
        System.out.println ("Second Number: ");
        line = br.readLine();
        // Returns a new double initialized to the value represented by the specified String, 
        // as performed by the valueOf method of class Double.
        double second = Double.parseDouble (line);
        
        if (first == second)
        {
            System.out.println ("Values are the same.");
            System.exit(0); // immediately terminates the program 
        }
        if (first < second)
            System.out.println ("First is less...");
        else
            System.out.println ("Second is less...");    
    }
}