function testClosure(){
    var x = 4;
    return x;
}

testClosure();

function testClosure2(){
    var x = 3;
    function closeX(){
        return x;
    }
    return closeX;
}

testClosure2();

var checkLocalX = testClosure2();
checkLocalX();

function buildCoveTicketMaker( transport ){
    return function( name ){
        console.log("Here is your transportation ticket via the " + transport + ".\n" + "Welcome to the Cold Closure Cove, " + name + "!\n");
    }
}

// Ticket makers

var getSubmarineTicket = buildCoveTicketMaker("Submarine");
var getBattleshipTicket = buildCoveTicketMaker("Battleship");
var getSeagullTicket = buildCoveTicketMaker("Seagull");

getSeagullTicket("Bella");
getBattleshipTicket("Aria");
getSubmarineTicket("Jeremy");

function mystery(){
    var secret = 6;
    function mystery2(multipler){
        multipler *= 3;
        return secret * multipler;
    }
    return mystery2;
}

var hidden = mystery();
var result = hidden(3);
result;

// Remember to read directions, if it says alert values, use 
// alert(54);

function warningMaker( obstacle ){
  return function (number, location) {
    alert("Beware! There have been " + 
          obstacle + 
          " sightings in the Cove today!" + number + obstacle + "(s) spotted at the " + location + "!"
         );
  };
}

var warning = warningMaker("Gambit");
var outer = warning(5, "NY");





