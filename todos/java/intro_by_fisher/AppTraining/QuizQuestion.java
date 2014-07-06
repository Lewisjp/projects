/** 
 * @author Lewis
 * @version 1.0
 */

class Book
{
    public int numPages = 100;
    public double weight = .7; // pounds
    public float cost; // undeclared it defaulted to 0.0 
}

public class QuizQuestion 
{
    public static void main (String[] args)
    {
        // book1 gets default values for Book
        Book book1 = new Book();
        System.out.println ("Pages: " + book1.numPages + " Weight: " + book1.weight + " Cost: " + book1.cost);
        
        Book book2 = book1;
        book2.numPages = 5000;
        book2.cost = 100;
        System.out.println ("Pages: " + book2.numPages + " Weight: " + book2.weight + " Cost: " + book2.cost);
    }
}