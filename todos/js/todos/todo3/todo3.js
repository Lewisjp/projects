alert("Page started");

var sweetAnnouncement = function() {alert("ATTENTION!\n CUPCAKES. \n\n...THAT IS ALL.")};

sweetAnnouncement();

var fruits = ["Apple", "Orange", "Pineapple", "Cranberry", "Pomegranate"];
var fruitJuice = fruits.map( function (fruit) { return "\n" + fruit + " juice";});

alert(fruitJuice);

// How to return a function from a function

var parkRides = [ ["Birch Bumpers", 40], ["Pines Plunge", 55], ["Cedar Coaster", 20], ["Ferris Wheel of fist", 90]];

var fastPassQueue = [ "Cedar Coaster", "Pines Plung", "Birch Bumpers", "Wheel"];

// push method adds cells to the back of arrays

// fastPassQueue.push("Pines Plung");

// shift method removes the first item from the array

// fastPassQueue.shift();  

// fastPassQueue.length(); // 3  because you removed one 


// var firstFastPass = fastPassQueue.shift(); // "Pines Plunge"

var wantsRide = "Birch Bumpers";

function buildTicket (allRides, passRides, pick ){
// allRides = array of rides & wait time
// passRides = array of next availabel fast pass ride
// pick = actual ride wanted 
  alert("Now in function buildTicket");
  if(passRides[0] == pick) {
      var pass = passRides.shift();
      return function(){ alert("Quick!  You've got a Fast Pass to " + pass + "!");
      };
  }else {
      for(var i = 0; i<allRides.length; i++){
        if(allRides[i][0] == pick){
          return function() { alert("A ticket is printing for " + pick + "!\n" + "Your wait time is about " + allRides[i][1] + " minutes.");
          };
        }
      }
  }
} // by adding (); its immediately invoked.


var ticket = buildTicket(parkRides, fastPassQueue, wantsRide);

ticket(); // actions the function in the var ticket 

var wantsRide = "Cedar Coaster";
// (); makes a function immediately actioned
buildTicket(parkRides, fastPassQueue, wantsRide)();

var puzzlers = [
    function ( a ) { return 8*a - 10; }, 
    function ( a ) { return (a-3) * (a-3) * (a-3); }, 
    function ( a ) { return a * a + 4; },
    function ( a ) { return a % 5; }
];
var start = 2;
var applyAndEmpty = function( input, queue ) {

  var length = queue.length; // so the condition does not change as for loops through 
  for(var i = 0; i<length; i++){
    input = queue.shift()(input);
  }
  return input;
};
alert(applyAndEmpty(2, puzzlers));


alert("the end");



