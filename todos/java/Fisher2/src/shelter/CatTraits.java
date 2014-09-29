package shelter;


public class CatTraits {
	
	private String privateOwner = "Freedom";
	public void setOwner (String newOwner){
		privateOwner = newOwner;
	}
	public String getOwner(){
		return privateOwner;
	}

	public int legs = 4;
	public String name = "Gambit";
	public boolean cat = true;
	public String breed = "Mountain Lion";
	
	
	// Constructor Functions
	
	// Use defaults
	public CatTraits(){}; 
	
	// Change some of the traits
	public CatTraits(String newName, String newBreed){
		name = newName;
		breed = newBreed;
	};

	// Change all of the traits
	public CatTraits(int legCount, String newName, Boolean isCat, String newBreed){
		legs = legCount;
		name = newName;
		cat = isCat;
		breed = newBreed;
	};
	
}



