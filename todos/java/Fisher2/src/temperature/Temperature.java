package temperature;

public class Temperature {
	public int degrees = 0;
	public char scale = 'C';
	public String toString(){
		return "" + degrees + scale;
	}
	
	// Method Overloading for set
	public void set (int d, char s){
		degrees = d;
		scale = s;
	}

	public void set (int d){
		degrees = d;
	}
	
	public void set (char s){
		scale = s;
	}
	

	
	// Constructor Function
	Temperature (int newDegrees, char newScale) {
		degrees = newDegrees;
		scale = newScale;
	}

	Temperature () {} // Uses defaults 
	
	Temperature (int newDegrees) {
		this (newDegrees, 'C'); // Using 'this' keyword to call on another constructor 
								// Consolidate code from multiple constructors 
	}
	
	Temperature (char newScale){
		scale = newScale;
	}
}


