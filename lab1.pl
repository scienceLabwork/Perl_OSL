#To write a Perl program to demonstrate Scalar values, Basic Operators and control flow, List and array variables.
#!/usr/bin/perl
use strict;
use warnings;

#demonstrate Scalar values
my $a = 10;
my $b = 20;
my $c = $a + $b;
print "The value of c is $c\n";

#demonstrate Basic Operators
my $d = $a - $b;
print "The value of d is $d\n";
my $e = $a * $b;
print "The value of e is $e\n";
my $f = $a / $b;
print "The value of f is $f\n";
my $g = $a % $b;
print "The value of g is $g\n";

#demonstrate control flow
if ($a > $b) {
    print "a is greater than b\n";
}
elsif ($a < $b) {
    print "a is less than b\n";
}
else {
    print "a is equal to b\n";
}

#demonstrate List and array variables
my @list = (1, 2, 3, 4, 5);
print "The value of the first element of the list is $list[0]\n";
print "The value of the last element of the list is $list[-1]\n";