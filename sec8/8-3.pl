use strict;
use warnings;

open(FILE, 'genome.txt') or die "$!";
my @lines = <FILE>;
close(FILE);

# (1)
print '*' x 20, "\n";
foreach (@lines) {
  while (/(.)\1{4,}/g) {
    print "$&\n";
  }
}

# (2)
print '*' x 20, "\n";
foreach (@lines) {
  while (/((.)\2){5,}/g) {
    print "$&\n";
  }
}

# (3)
print '*' x 20, "\n";
foreach (@lines) {
  while (/(.)(.)(.)(.)\4\3\2\1/g) {
    print "$&\n";
  }
}

print '*' x 20, "\n";
