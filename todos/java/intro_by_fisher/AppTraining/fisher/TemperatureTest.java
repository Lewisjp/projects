package fisher;

public class TemperatureTest {
	public static void main (String[] args){
		Temperature t; //uninitialized ref
		t = new Temperature();
		System.out.println("t = " + t + t.toString());
		t.set(100, 'F');
		System.out.println("t = " + t );
	}
}
