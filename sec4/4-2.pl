use strict;
use warnings;

my $time = '01:23:45';
my ($hour, $min, $sec) = split(/:/, $time);
print "$hour h $min m $sec s\n";
