package accessExample;

public class AccessExample {
	public static void main (String [] args){
		Access at = new Access();
		at.isPublic = true;
		// the following would error because its directly modifying a private variable instead of with a public function 
		// at.isPrivate = true;
		if(at.getIsPrivate() == false)
			at.setIsPrivate(false);
		System.out.println("public: " + at.isPublic + "\nprivate: " + at.getIsPrivate() );
	}
}
