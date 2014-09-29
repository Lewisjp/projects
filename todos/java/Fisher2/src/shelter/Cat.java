package shelter;


public class Cat {

	public static void main(String[] args){
		
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


