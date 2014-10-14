function warningMaker( obstacle ){
  var count = 0;
  var zones = [];
  return function ( number, location ) {
    count++;
    zones.push([location,number]);
    var list = "";
    for(var i = 0; i<zones.length; i++){        
        list = list + "\n" + zones[i][0] +
        " (" + zones[i][1] + ")";
    }
    alert("Beware! There have been " +
          obstacle +
          " sightings in the Cove today!\n" +
          number +
          " " +
          obstacle +
          "(s) spotted at the " +
          location +
          "!\n" +
          "This is Alert #" +
          count +
          " today for " +
          obstacle +
          " danger.\n" +
          "Current danger zones are: " +
          list
         );
  };
}

/**
Clousers bind values at last moment/
The functions actual return is the true "moment of closure" when the environemtn and variables are packages up.

If you return the function immediately when you found the variables is found, it locks that instance in place.  


**/

function assignTorpedo(name, passengerArray){
    for (var i = 0; i< passengerArray.length; i++){
        if (passengerArray[i] == name){
            return function(){ // this is the i value returned by the closure
            // i is not allowed to progress in this case 
                console.log("Ahoy, " + name + "!\n" + 
                "Man your post at Torpedo #" + (i+1) + "!");
            };
        }
    }
    
}

var subPassengers = ["Jeremy", "Bella", "Gambit", "Aria"];
var giveAssignment = assignTorpedo("Bella", subPassengers);
giveAssignment(); 


function makeTorpedoAssigner(passengerArray){
    return function(name){
     for (var i = 0; i <passengerArray.length; i++){
         if(passengerArray[i] == name){
             console.log("Ahoy, " + name + "!\n" +
             "Man your post at Torpedo #" + (i+1) + "!");
         }
     }   
    };
}

var getTorpedoFor = makeTorpedoAssigner(subPassengers); // assign the array
getTorpedoFor("Aria");



// this examples uses 2 arrays as inputs

var listOfSharks = ["Sea Pain", "Great Wheezy",
                    "DJ Chewie", "Lil' Bitey",
                    "Finmaster Flex", "Swim Khalifa",
                    "Ice Teeth", "The Notorious J.A.W."];
var listOfTargets = ["icicle bat", "snow yeti",
                     "killer penguin", "frost tiger",
                     "polar bear", "iceberg",
                     "blue witch", "wooly mammoth"];

                     
function makeTargetAssigner( sharks, targets ){
 return function ( shark ) {
    for (var i = 0; i<sharks.length; i++) {
      if(shark == sharks[i]) {
        alert("What up, " + shark + "!\n" +
              "There've been " + targets[i] + " sightings in our 'hood!\n" +
              "Time for a swim-by lasering, homie!");
      }
    }
  };
}


