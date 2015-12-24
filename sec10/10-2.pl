use strict;
use warnings;

sub calc_average {
  my @numbers = @_;
  if (!@numbers) { return 0; }

  my $sum = 0;
  $sum += $_ foreach (@numbers);
  $sum / @numbers;
}

print &calc_average(3, 6), "\n";
print &calc_average(), "\n";
