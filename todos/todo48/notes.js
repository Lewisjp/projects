function adventureSelector ( userChoice ){
  if(userChoice == 1){
    return function () {
    alert("You've selected the Vines of Doom!\n" +
          "Hope you have a swingin' time.");
    };
  } else if (userChoice == 2){
    return function () {
    alert("Looks like you want the Lake of Despair!\n" +
          "Watch out for crocs. And I ain't talkin' about shoes.");
    };
  } else if (userChoice == 3) {
    return function () {
      alert("The Caves of Catastrophe, really?\n" +
            "Alright, well....nice knowing you.");
    };
  }
}

var userChoice = adventureSelector(3); 

/* JS Random numbers ex: 1-5
How does this code work?

Math.floor(Math.random() * 5 + 1);
First we use Math.random() to create a random number from 0 up to 1. For example, 0.5
Then we multiply by 5 to make the random number from 0 up to 5. For example, 0.5 * 5 = 2.5
Next we use Math.floor() to round down to a whole number. For example, Math.floor( 2.5 ) = 2
Finally we add 1 to change the range from between 0 and 4 to between 1 and 5 (up to and including 5)

*/

var color = prompt("What's your favorite primary color?","Type your favorite color here");

switch(color) {
  case 'red':
    console.log("Red's a good color!");
    break;
  case 'blue':
    console.log("That's my favorite color, too!");
    break;
  
  default:
    console.log("I don't think that's a primary color!");
}


//

var phonebookEntry = {};

phonebookEntry.name = 'Oxnard Montalvo';
phonebookEntry.number = '(555) 555-5555';
phonebookEntry.phone = function() {
  console.log('Calling ' + this.name + ' at ' + this.number + '...');
};

phonebookEntry.phone();

/* hashes
var myObject = {
    key: value,
    key: value,
    key: value
};
*/
var me = {
    name: 'Eric',
    age: 26
};

/* hashes
There are two ways to create an object: using object literal notation (which is what you just did) and using the object constructor.

Literal notation is just creating an object with curly braces, like this:

var myObj = {
    type: 'fancy',
    disposition: 'sunny'
};

var emptyObj = {};
When you use the constructor, the syntax looks like this:

var myObj = new Object();
This tells JavaScript: "I want you to make me a new thing, and I want that thing to be an Object.

You can add keys to your object after you've created it in two ways:

myObj["name"] = "Charlie";
myObj.name = "Charlie";

*/
var friends = {

bill: {
    firstName: 'Bill',
    lastName: 'LaBarre',
    number: '1234567',
    address: []
},

steve: {
    firstName: 'Steve',
    lastName: 'Smith',
    number: '1234567',
    address: []
},

aria: {
    firstName: 'Aria',
    lastName: 'lewis',
    number: '1234567',
    address: []
}

};

var list = function(friends){
    for(var key in friends){
        console.log(key);
    }
};

var search = function(name){
    for (var key in friends){
       if (friends[key].firstName == name){
            console.log(friends[key]);
            return friends[key];
       } 
    }
};

///

(((3 * 90) === 270) || !(false && (!false)) || "bex".toUpperCase() === "BEX");

//////////////

// here we define our method using "this", before we even introduce bob
var setAge = function (newAge) {
  this.age = newAge;
};
// now we make bob
var bob = new Object();
bob.age = 30;
// and down here we just use the method we already made
bob.setAge = setAge;

// change bob's age to 50 here
bob.setAge(50);

// make susan here, and first give her an age of 25

var susan = new Object();
susan.age = 25;
susan.setAge = setAge;

// here, update Susan's age to 35 using the method
susan.setAge(35);

////////

var rectangle = new Object();
rectangle.height = 3;
rectangle.width = 4;
// here is our method to set the height
rectangle.setHeight = function (newHeight) {
  this.height = newHeight;
};
// help by finishing this method
rectangle.setWidth = function (newWidth){
  this.width = newWidth;  
};
  

// here change the width to 8 and height to 6 using our new methods

rectangle.setHeight(6);
rectangle.setWidth(8);


////////

function Person(name,age) {
  this.name = name;
  this.age = age;
}

// Let's make bob and susan again, using our constructor
var bob = new Person("Bob Smith", 30);
var susan = new Person("Susan Jordan", 25);
// help us make george, whose name is "George Washington" and age is 275

var george = new Person("George Washington", 275);

///////

function Rectangle(height, width) {
  this.height = height;
  this.width = width;
  this.calcArea = function() {
    return this.height * this.width;
  };
  // put our perimeter function here!
  this.calcPerimeter = function() {
    return (this.height * 2 ) + (this.width * 2)
  };
}

var rex = new Rectangle(7,3);
var area = rex.calcArea();
var perimeter = rex.calcPerimeter();

//////

// Our Person constructor

function Person(name, age){
  this.name = name;
  this.age = age;
};

// Now we can make an array of people
family = [new Person("alice", 40), new Person("bob", 42), new Person("michelle", 8), new Person("timmy", 6)];

// loop through our new array

for(var counter = 0; counter < family.length; counter++){
  console.log(family[counter]);  
};

//////

function Circle (radius) {
    this.radius = radius;
    this.area = function () {
        return Math.PI * this.radius * this.radius;
        
    };
    // define a perimeter method here
    this.perimeter = function(){
        return 2 * Math.PI * radius;
    };
};

////
var contacts = [bob, mary];

console.log(contacts[1].phoneNumber)

//////

var bob = {
    firstName: "Bob",
    lastName: "Jones",
    phoneNumber: "(650) 777-7777",
    email: "bob.jones@example.com"
};

var mary = {
    firstName: "Mary",
    lastName: "Johnson",
    phoneNumber: "(650) 888-8888",
    email: "mary.johnson@example.com"
};

var contacts = [bob, mary];

function printPerson(person) {
    console.log(person.firstName + " " + person.lastName);
}

function list() {
  var contactsLength = contacts.length;
  for (var i = 0; i < contactsLength; i++) {
    printPerson(contacts[i]);
  }
}

/*Create a search function
then call it passing "Jones"*/

var search = function(lastName){
    var contactsLength = contacts.length;
    for (var i = 0; i < contactsLength; i++ ){
        if(contacts[i].lastName == lastName){
            printPerson(contacts[i]);  
        };

    };
};

var add = function(firstName,lastName, email, phoneNumber){
    contacts.push(firstName = {
    firstName: firstName,
    lastName: lastName,
    email: email,
    phoneNumber: phoneNumber
    })
};




add("Bella","Lewis","B@gmail.com", "num")
list();

///

var myObj = {
    // finish myObj
    name: "Jeremy"
};

console.log( myObj.hasOwnProperty('name') ); // should print true
console.log( myObj.hasOwnProperty('nickname') ); // should print false


//////

var suitcase = {
shirt: "Hawaiian",
};

if(suitcase.hasOwnProperty('shorts') === true) {
console.log(suitcase.shorts);
}
else {
suitcase["shorts"] = "dungarees";
console.log(suitcase.shorts);
}

/////

var dog = {
species: "bulldog",
age: 3,
color: brown
};
// To print out all elements, we can use a for/in loop, like this:

for(var property in dog) {
  console.log(property);
}

//////

var nyc = {
    fullName: "New York City",
    mayor: "Bill de Blasio",
    population: 8000000,
    boroughs: 5
};

// write a for-in loop to print the value of nyc's properties
for(var x in nyc){
    console.log(nyc[x]);  
};

/*
Here we have very similar code as last time, but there is an important difference. Instead of using buddy.bark to add the bark method to just the buddy object, we use Dog.prototype.bark.

Click run this time, and both buddy and snoopy can bark just fine! Snoopy can bark too even though we haven't added a bark method to that object. How is this so? Because we have now changed the prototype for the class Dog. This immediately teaches all Dogs the new method.
*/

function Dog (breed) {
  this.breed = breed;
};

// here we make buddy and teach him how to bark
var buddy = new Dog("golden Retriever");
Dog.prototype.bark = function() {
  console.log("Woof");
};
buddy.bark();

// here we make snoopy
var snoopy = new Dog("Beagle");
/// this time it works!
snoopy.bark();  

//////

// create your Animal class here
function Animal(name, numLegs){
    this.name = name;
    this.numLegs = numLegs;
};


// create the sayName method for Animal

Animal.prototype.sayName = function(){
    console.log('Hi my name is '+ this.name);
};


// provided code to test above constructor and method
var penguin = new Animal("Captain Cook", 2);
penguin.sayName();
/////

// define a Penguin class
function Penguin(name){
    this.name = name;
    this.numLegs = 2;
};

// set its prototype to be a new instance of Animal
Penguin.prototype = new Animal();

/////

function Penguin(name) {
    this.name = name;
    this.numLegs = 2;
}

// create your Emperor class here and make it inherit from Penguin
function Emperor(name){
    this.name = name;
};
Emperor.prototype = new Penguin();

// create an "emperor" object and print the number of legs it has

var emperor = new Emperor("Bella");

console.log(emperor.numLegs);

/////

function Person(first,last,age) {
   this.firstname = first;
   this.lastname = last;
   this.age = age;
   var bankBalance = 7500;
}

// create your Person 
var john = new Person("john", "Lewis", 30);

// try to print his bankBalance
console.log(john.bankBalance); // #=> undefined

////////

/*
Your method should resemble how we defined getBalance last time—you should use this.askTeller = function() { }. Don't declare askTeller with var.

You return method the same way that you would return simple variables. Be careful not to call the method though and leave out parentheses in your return statement!
*/

function Person(first,last,age) {
   this.firstname = first;
   this.lastname = last;
   this.age = age;
   var bankBalance = 7500;
  
   var returnBalance = function() {
      return bankBalance;
   };
       
   // create the new function here
   this.askTeller = function(){
        return returnBalance;  
   };
}

var john = new Person('John','Smith',30);
console.log(john.returnBalance);
var myBalanceMethod = john.askTeller();
var myBalance = myBalanceMethod();
console.log(myBalance);

/////

var languages = {
    english: "Hello!",
    french: "Bonjour!",
    notALanguage: 4,
    spanish: "Hola!"
};

// print hello in the 3 different languages
for(var x in languages){
    if(typeof languages[x] === "string"){
        console.log(languages[x]);
    }
};
///////

var cashRegister = {
    total:0,
//insert the add method here    
    
    add: function(itemCost){
        total += itemCost;  
    },
    
    scan: function(item) {
        switch (item) { 
        case "eggs": 
            this.add(0.98); 
            break;
        
        case "milk": 
            this.add(1.23); 
            break;
        
        //Add other 2 items here
        case "magazine":
            this.add(4.99);
            break;
        case "chocolate":
            this.add(0.45);
            break;
        }
        return true;
    }
    
};

//Scan 2 eggs and 3 magazines
cashRegister.scan("eggs");
cashRegister.scan("eggs");
cashRegister.scan("magazine");
cashRegister.scan("magazine");
cashRegister.scan("magazine");

//Show the total bill
console.log('Your bill is '+cashRegister.total);

/////