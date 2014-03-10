command line$ regetron

> !data "The lazy dog\nsleeps in the yard."
> .*lazy.*
0000: The lazy dog
> [A-Z][a-z]*
0000: The lazy dog
> [a-z]\.
0001: sleeps in the yard.
> pizza
> .*lazy.*
0000: The lazy dog
> camel
> .*camel.*
> .*sleeps.*
0001: sleeps in the yard.
> 

command line$ regetron myfile.txt

> .*space.*
> .*final.*
0000: Space... The final frontier. These are the voyages of the starship Enterprise. It's continuing mission, to explore strange new worlds. To seek out new life and new civilizations. To boldly go where no one has gone before. 
> .*Space.*
0000: Space... The final frontier. These are the voyages of the starship Enterprise. It's continuing mission, to explore strange new worlds. To seek out new life and new civilizations. To boldly go where no one has gone before.  

command line$ regetron

> !load myfile.txt
> .*Space.*
0000: Space... The final frontier. 
> 

!match toggles whether regex are run in match vs. search mode

> !match
Match mode: match
> Space
0000: Space... The final frontier. 
> final
> The final frontier.
> pizza
> To
0003: To seek out new life and new civilizations. 
0004: To boldly go where no one has gone before.

CTRL-d to close regetron 


