/**
 * @author Lewis
 * @version 1.0
 */

import comp102x.IO;

public class IronMan
{
    private String id = "?";
    //public int givenId;
    
    public void IronMan(String newID)
    {
        id = newID;
    }
    
    private String dance()
    {
        IO.outputln("You must be joking +_+");
    }
    
    public void cleanSlateProtocol()
    {
        IO.outputln("3 ... 2 ... 1 ... BOOM!");
    }
    
    public void setID(String givenId)
    {
        id = givenId;
    }
    
    public void getName()
    {

int double1 = 1.0;


        
        // ("Mark + id) concatenates "Mark " and id to form a character string
       // return ("Mark + id);
    }
    
    public static void main(String[] args)
    {
        // construct an IronMan using the default constructor 
        IronMan defaultIronMan = new IronMan();
        String name = defaultIronMan.getName();
        IO.outputln("This is: " + name);
        
        // construct an IronMan using the constructor with argument
        IronMan mark42 = new IronMan("42");
        IO.outputln("This is: " + mark42.getName());
        mark42.dance();
        mark42.cleanSlateProtocol();
        
    }
}