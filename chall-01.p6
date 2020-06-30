# Exercises based on the Programing Challenges of the book "Using Raku" - Andrew Shitov

use v6.d

loop (my $n=0;;) {

    print "\nChoose a chalenge number 1 to 5 (0 to quit): ";
    my $n = prompt;

    given $n {

        when 1 {
            say "# 1. Hello, World!";
            # say "Hello, World!";          #form 1
            # "Hello, World!".say;          #form 2
            print "Hello, World! \n";       #form 3
        }
        when 2 {
            say "# 2. Greet a person";
            # my $name = prompt ("Enter your name: ");                      #form 1
            # say 'Hey, ' ~ prompt('Enter your name: ') ~ '! Whats up?';    #form 2 

            # print "Enter your name: ";                                    #form 3
            # my $name = get();
            # say "Hey $name! Hou are you?";

            print "Enter your name: ";                                      #form 4
            my $name = $*IN.get();
            say "Hey $name! How are you?";
        }
        when 3 {
            say "# 3. String length";
            print "Enter your name and know its length: ";
            my $name = get();
            say 'Your name has '~$name.chars~' characters';
        }
        when 4 {
            say "# 4. Unique digits";
            my $number = prompt("Type numbers as you like: ");
            say $number.comb.unique.sort.join(" ");             #form 1
            # say $number.Str.comb.unique.sort;                 #form 2
        }
        when 5 {
            say "# 5. Print a string in the reversed order";
            print "Write something: ";
            my $name = get();
            say "Result: "~$name.flip;
        }
    }
    last if $n == 0;
}
say "End of program!";