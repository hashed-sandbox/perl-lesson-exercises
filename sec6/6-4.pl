use strict;
use warnings;

foreach my $l (0..15) {
  foreach my $r (0..15) {
    print sprintf('%X%X ', $l, $r);
  }
  print "\n";
}
