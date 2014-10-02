package boxSize;

public class BoxSize {
	public static void main (String args[]){
		Box b1 = new Box (5,10);
		Box b2 = new Box (1,2);
		Box b3 = new Box (8,6);
		
		System.out.println("Max Length = " + Box.maxLength);
		System.out.println("Max Width = " + Box.maxWidth);
		
	}

}
