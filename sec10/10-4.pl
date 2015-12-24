use strict;
use warnings;

sub factorial {
  my $n = int($_[0]);
  return 0 if ($n < 0);
  return 1 if ($n == 0);
  return $n * &factorial($n - 1);
}

print &factorial(-1), "\n";
print &factorial($_), "\n" foreach (0..9);
print &factorial(10.5), "\n";
