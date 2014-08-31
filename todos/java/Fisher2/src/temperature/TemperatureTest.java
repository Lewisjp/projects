package temperature;

import java.util.Stack;

public class TemperatureTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Now an error because new constructor requires params
		// Temperature t = new Temperature (); 
		
		Temperature t = new Temperature (99, 'F');
		
		System.out.println("t = " + t.toString());
		t.set(100, 'F');
		System.out.println("t = " + t);
		
		t.set(151);
		System.out.println("t = " + t);

		t.set('C');
		System.out.println("t = " + t);
		
		Temperature t1 = new Temperature();
		System.out.println("Default Constructor is " + t1);
		
		Temperature t2 = new Temperature('F');
		System.out.println("Constructor that just takes a char is " + t2 );
		
		Temperature t3 = new Temperature(99, 'F');
		System.out.println("Constructor that has both degrees and char is " + t3);

		
		

		int[] arr1 = {1, 2, 3, 4, 5};
		int[] arr2 = {6, 7, 8, 9, 10};
		
		//System.out.println(sumOfProduct(arr1, arr2, arr1.length));
		
		
		
		
		
		
	}

	
	public static int sumOfProduct (int[] arr1, int[] arr2, int n){
		 
		 
		
		/**
		 * 
		 * Make a List out of the array with Arrays.asList(), 
		 * and call remove() on all the appropriate elements. 
		 * Then call toArray() on the 'List' to make back into an array again.
		 */

		if (n == 0) {
			return 0;
		}
		else {
			return arr1[n-1] * arr2[n-1] + sumOfProduct(arr1, arr2, n-1); 
		}
		
	}
	
	
	
	public void transpose(int[][] input){
		for(int i = 0; i < input.length; i++){
			for(int j = i; j < input[i].length; j++){
				int temp = input[i][j];
			    input[i][j] = input[j][i];
			    input[j][i] = temp;
			}
		}
		
	}


	
}
	
	
