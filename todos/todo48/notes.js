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
    firstName: 'bill',
    lastName: 'LaBarre',
    number: '1234567'
},

steve: {
    firstName: 'steve',
    lastName: 'Smith',
    number: '1234567'
},

aria: {
firstName: 'aria',
lastName: 'lewis',
number: '1234567'
}

};
