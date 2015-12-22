use strict;
use warnings;

my %times;

open(FILE, './log.txt') or die "$!";
while (my $line = <FILE>) {
  chomp($line);
  if ($line =~ /^[a-z]/) {
    my ($color, $time) = split(' ', $line);
    $times{$color} += $time;
  }
}
close(FILE);

foreach (keys %times) {
  my ($hour, $min) = (int($times{$_} / 60), $times{$_} % 60);
  printf("%-8s %3dh %3dm\n", $_, $hour, $min);
}
