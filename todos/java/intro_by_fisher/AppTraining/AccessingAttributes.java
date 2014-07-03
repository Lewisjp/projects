/**
 * @author Gambit
 * 
 */



public class AccessingAttributes 
{
    public static void main (String [] args) 
    //ACCESS_SPECIFIER RETURN_DATA_TYPE
    // void = do not return a value 
    {
        Temperature t = new Temperature();
        System.out.println ("Temp: " + t.degrees + t.scale);
    }
}