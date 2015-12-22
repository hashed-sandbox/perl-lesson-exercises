use strict;
use warnings;

my @array = (46, 13, 30, 7, 69);
my @reversed = sort { $b <=> $a } @array;
print "@reversed\n";
