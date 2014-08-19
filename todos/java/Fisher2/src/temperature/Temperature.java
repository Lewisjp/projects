package temperature;

public class Temperature {
	public int degrees = 0;
	public char scale = 'C';
	public String toString(){
		return "" + degrees + scale;
	}
	public void set (int d, char s){
		degrees = d;
		scale = s;
	}

	// Constructor Function
	Temperature (int newDegrees, char newScale) {
		degrees = newDegrees;
		scale = newScale;
	}

}


