package temperature;

public class TemperatureTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Now an error because new constructor requires params
		// Temperature t = new Temperature (); 
		
		Temperature t = new Temperature (99, 'F');
		
		System.out.println("t = " + t.toString());
		t.set(100, 'F');
		System.out.println("t = " + t);
	}

	
	
}
