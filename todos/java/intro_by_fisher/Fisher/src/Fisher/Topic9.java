package Fisher;


import java.io.*; 

class someThing {
	public String toString(){
		return "A something";
	}
}


public class Topic9 {

	static public void main (String args[]) {
		int A[] = new int[3];
		int B[];
		
		A[0] = 0;
		A[1] = 1;
		A[2] = 2;
		
		B = A; // Assign A to B, both now refer to A
		System.out.println("A[0] = " + A[0]);
		System.out.println("A[1] = " + A[1]);
		System.out.println("A[2] = " + A[2]);		
		B[1] = 99; // modifies A[1]
		System.out.println("A[0] = " + A[0]);
		System.out.println("A[1] = " + A[1]);
		System.out.println("A[2] = " + A[2]);		
		if ( A == B ) {
			System.out.println("A and B are the same object!");
		}else {
			System.out.println("A and B are NOT the same object!\n\n\n");
		}
		
		
		double[] nums = new double[3];
		nums[0] = 2.0;
		nums[1] = 5.0;
		nums[2] = 8.0;
		
		System.out.println("Average = " + calcAverage(nums) + "\n\n"); 
		
		String[] sourceArray = {"Moe", "Larry", "Curely"};  // Type[] varName = {content, content};  
		String[] destArray = new String[3];
		
		System.arraycopy (sourceArray, 0,  	// source, pos
							destArray, 0, 	// output, post
						  destArray.length	// output final element
						);
		for (int i = 0; i < destArray.length; i++){
			System.out.println(destArray[i]);
		}
		
		// Array of objects = Array of references/ pointers 
		
		someThing[] array = new someThing[2];
		
		for(int i = 0; i < array.length; i++){
			if(array[i] == null){
				System.out.println("Allocating");
				array[i] = new someThing();
			}
		}
		
		for (int i = 0; i < array.length; i++){
			if (array[i] != null){
				System.out.println(array[i]);
			}
			
		}
		
		int numbs[] = {1,2};
		
		for (int i = 0; i < numbs.length; i++)
			System.out.println(numbs[i]);
		
		someThing[] arr = {new someThing(), new someThing()};
		
		for (int i = 0; i < arr.length; i++)
			System.out.println(arr[i]);
		
		
		String [] argue = {"dog", "cat"};
		System.out.println("There are " + argue.length + " arguments.");
		for (int i = 0; i < argue.length; i++){
			if (i== 0) System.out.println("They are: ");
			System.out.println(argue[i]);
		}
		
		
	}

	
	public static double calcAverage (double[] nbrs) {
		double sum = 0.0;
		for (int i = 0; i < nbrs.length; i++){
			sum = sum + nbrs[i];
		}
		
		return nbrs.length > 0 ?  sum / nbrs.length : 0.0;
		
	}
	
	
	
	
	
	
}
