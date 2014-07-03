class Temperature
{
    public int degrees = 0;
    public char scale = 'C'; // 'F' or 'C'
    
    public String toString()
    // Returns a String representing temperature
    // Takes no arguments (empty parameter list)
    // Called implicitly to convert object into a String for catenation
    {
        return "" + degrees + scale;
    }
    
    public void set (int d, char s)
    // Modifies attributes of object its applied to
    // No return value
    // Accepts two parameters
    // Parameters initialized with values provided in call to method 
    {
        degrees = d;
        scale = s;
    }
}
    
    
public class TemperatureTest
    {
        public static void main (String[] args)
        {
            Temperature t;
            // Here we work with the attributes of t, a Temperature object
            t = new Temperature();
            System.out.println("t = " + t.toString() ); // explicit
            t.set (100, 'F');
            System.out.println("t = " + t); // implicit
        }
    }