import comp102x.IO;

public class PowerCalculator
{
    /**
     * Calculate the non-negative power of an integer number. If a negative power is input, the method returns 1.
     * 
     * @param number The number to take power.
     * @param power The power factor to be taken to.
     * @return The calculation result after taking power of the integer number.
     */
    public static long powerN(int number, int power) {
        
        // write your code after this line
        
        if(power <= 0){
            return 1;
        }
        
        int result = number;
        if(power > 1){
            for(int x = 1; x < power; x++){
            result = result * number;    
            };
        }
        else if (power == 1){
            result = number;
        }

        return result; // remove this line after completing your code

        /*
         * Sample Answer
            long result = 1;
            
            while (power > 0) {
            
                    result *= number;
                    power--;
            }

         */
        
        
    
    
    }
    
        public static int fact2(int n1, int n2) {  
    
        int t = 1; // initialize t to 1       
        for (int counter = n1; counter <= n2; counter++) {
            t = t * counter;
        }
        return t;
    }
    
        public static int fact3(int n1, int n2) {  
    
        int t = 1; // initialize t to 1       
        for (int counter = n2; counter > n1; counter--) {
            t = t * counter;
        }
        return t;
        /*
         * The loop goes from iteration number n2 down to and excluding iteration number n1. 
         * The loop will exit when the current iteration number is equal to n1. 
         * Initially, the variable t is initialized to be 1. 
         * In each iteration, the value of t is multiplied with the current iteration number and the result is assigned back to t. 
         * Therefore, the result of the program will be n2 * (n2 - 1) * … * (n1 + 1), 
         * which can be written as (n1 + 1) * … * (n2 - 1) * n2.
         */
    }
}

