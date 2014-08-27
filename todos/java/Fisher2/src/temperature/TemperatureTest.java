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
		
		t.set(151);s
		System.out.println("t = " + t);

		t.set('C');
		System.out.println("t = " + t);
		
		Temperature t1 = new Temperature();
		System.out.println("Default Constructor is " + t1);
		
		Temperature t2 = new Temperature('F');
		System.out.println("Constructor that just takes a char is " + t2 );
		
		Temperature t3 = new Temperature(99, 'F');
		System.out.println("Constructor that has both degrees and char is " + t3);
	}

	
	
}
