use strict;
use warnings;

my %table;
open(FILE, 'data.txt') or die "data.txt: $!";
while (my $line = <FILE>) {
  my ($ruby, $name, @scores) = split(',', $line);
  my $sum = 0;
  $sum += $_ foreach (@scores);
  $table{$name} = $sum;
}
close(FILE);

# sort items in descending order on one's score
foreach (sort { $table{$b} <=> $table{$a} } keys %table) {
  print $_, "\t", sprintf("%3d", $table{$_}), "\n";
}
