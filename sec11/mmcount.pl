use strict;
use warnings;

open(FILE, 'mmlog.txt') or die "mmlog.txt: $!";
my @lines = <FILE>;
close(FILE);

for (my $i = 0; $i < $#lines; $i++) {
  my ($title1, $num1) = split(/ +/, $lines[$i]);
  my ($title2, $num2) = split(/ +/, $lines[$i+1]);
  print "$title2 -> $title1: ", $num1 - $num2, "\n";
}
