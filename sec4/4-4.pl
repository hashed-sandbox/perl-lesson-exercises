use strict;
use warnings;

my @array;
my $item;
my $index;

# push(@array, $item);
@array = (2, 4, 6);
$item  = 8;
splice(@array, @array, 0, $item);
print "@array\n";

# $item = pop(@array);
@array = (2, 4, 6);
$item  = splice(@array, $#array, 1);
print "$item\n";

# $item = shift(@array);
@array = (2, 4, 6);
$item  = splice(@array, 0, 1);
print "$item\n";

# unshift(@array, $item);
@array = (2, 4, 6);
$item  = 8;
splice(@array, 0, 0, $item);
print "@array\n";

# $array[$index] = $item;
@array = (2, 4, 6);
$item  = 8;
$index = 1;
splice(@array, $index, 1, $item);
print "@array\n";
