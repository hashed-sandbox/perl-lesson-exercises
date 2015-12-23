use strict;
use warnings;

my @rhymes = (
  "Humpty Dumpty sat on a wall, ",
  "Humpty Dumpty had a great fall;",
  "All the King's horses, and all the King's men",
  "Cannot put Humpty Dumpty together again.",
);

my %hist;

foreach my $line (@rhymes) {
  while ($line =~ /[\w']+/g) {
    $hist{lc $&}++;
  }
}

foreach (sort keys %hist) {
  print "$_ $hist{$_}\n";
}
