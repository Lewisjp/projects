/*

Clouser - returning a function from a function, complete with variables from an external scope
  The entire contents of one of these inner functions will still be available OUTSIDE the outermost function 

function's local variables are not available when its closed.
functions can access referred variables outside of itself. 

think of everything being bounded in the function, box

clouser can make creation of similar functions ultra-efficient. 

you can use it as a factory 

when you use it as a factory, it will only fill in the first parameter used, or the one explicitly used.
*/
// example of a closure
function warningMaker( obstacle ){
  return function () { 
    alert("Beware! There have been " + obstacle + " sightings in the Cove today!");
  };
}






