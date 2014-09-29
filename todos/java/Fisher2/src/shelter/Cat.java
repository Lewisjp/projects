package shelter;


public class Cat {

	public static void main(String[] args){
		
		CatTraits WilliamWallace = new CatTraits();
		// Here we use our get method to find the value of the private variable, privateOwner 
		System.out.println("William Wallace the cat responds to one master, " + WilliamWallace.getOwner() + ".");
		
		CatTraits RobertTheBruce = new CatTraits();
		// Here we're going to use our set method to change the value of our private variable, privateOwner
		RobertTheBruce.setOwner("King Edward 'Longshanks'");
		// Here we use our get method to find the value of the private variable, privateOwner 
		System.out.println("Robert The Bruce, the cat responds to one master, " + RobertTheBruce.getOwner() + ".");		
		
	}
}
		
		
		// Here we use the default options
		CatTraits Gambit = new CatTraits();
		
		System.out.println(Gambit.name + " the " + Gambit.breed + " has " + Gambit.legs + " legs and its " + Gambit.cat + " that he's a cat.");
		
		// Here we change just a couple of traits
		CatTraits Meg = new CatTraits("Meg", "American Shorthair");
		
		System.out.println(Meg.name + " the " + Meg.breed + " has " + Meg.legs + " legs and its " + Meg.cat + " that she's a cat.");
		
		//  Here we change all the traits 
		CatTraits Ananasi = new CatTraits(8, "Ananasi", false, "spider");
		
		System.out.println(Ananasi.name + " the " + Ananasi.breed + " has " + Ananasi.legs + " legs and its " + Ananasi.cat + " that she's a cat.");
		
		
	}
	
}

