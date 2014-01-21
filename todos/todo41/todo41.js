// write fizzbuzz in JS, for 1-100.

// 3 becomes Fizz, 5 becomes Buzz, and 15 becomes FizzBuzz

function fizzbuzz(num){
  for (var i=0; i<= num; i++)
  {
    if (i % 15  === 0)
      {
      show("FizzBuzz");
      }
    else if (i % 5 === 0)
      {
      show("Buzz");
      }
    else if (i % 3 === 0)
      {
      show("Fizz");
      }
    else
      {
      show("");
      } 
  }
}


fizzbuzz(100);
