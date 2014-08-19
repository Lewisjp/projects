package temperature;

public class TemperatureTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Temperature t; // uninitialized ref
		t = new Temperature ();
		System.out.println("t = " + t.toString());
		t.set(100, 'F');
		System.out.println("t = " + t);
	}

}
