# Program 1 for cerner_2^5_2020
use strict;

my $x = 0;
my $y = 1;
my $third = 0;
my $count;
# cerner_2^5_2020
print "Enter the number you would like to see in the sequence: ";
my $number = <STDIN>;
# finding fibo
for ($count = 1; $count<=$number; $count++) {
   $third = $x + $y;
   $x = $y;
   $y = $third;
}

print $y;