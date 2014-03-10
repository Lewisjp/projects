=begin

Don't read Regex like a school book.  Break it down.


name.match(/
        ^    # from the beginning
        [    # a set of chars containing
          \d # any digit
          a  # the letter a
          -  # through
          z  # the letter z
        ]    # end class
        +    # one or more
        \d   # any digit
        $    # to the end
        /);

"Match completely one more digits or lowercase letters followed by a digit."

We will be studying from "Learn Rege The Hard Way"

To install Regetron simply do this:

Install Python if you don't have it.
Install PIP and distribute using http://pypi.python.org/pypi/distribute.
Run pip install regetron
Alternatively, you can go to the Regetron project page and get the source to install like this:

$ git clone git://gitorious.org/regetron/regetron.git
$ cd regetron
$ sudo python setup.py install
Once you have Regetron, you try running it and doing some things with it:

$ regetron
Regetron! The regex teaching shell.
Type your regex at the prompt and hit enter. It'll show you the
lines that match that regex, or nothing if nothing matches.
Hit CTRL-d to quit (CTRL-z on windows).
> !data "Hello World!"
> .*W.*
0000: Hello World!
> Cats
>


Give Regetron a file or a string of data, and then you type in regular expressions (regex).


Regetron has a few commands and options as well:

If you give it a file on the command line it will load that: regetron somefile.txt
If you hit ENTER to make a blank line it will go into "verbose mode" which we'll use heavily in the book. To finish in verbose mode and run the regex just enter a blank line.
The command !data EXP will run any Python expression (EXP) and and set that as the data. Try !data "LOTS OF ME" * 100 and then try regex .*ME.* to see that it duplicated the line 100 times.
The command !help will print the available commands.
!load FILE will load the given file for your data.
!match toggles whether regex are run in match vs. search mode. We'll cover that later.
If you have readline installed, then Regetron will give you a readline scrollback and edit feature.
To exit, just use CTRL-d (or CTRL-z on Windows) and it'll exit.

=end

We can use a Python Regex file to scan a regular text file as shown below

# command line$ regetron ex2.txt ex2.regex










