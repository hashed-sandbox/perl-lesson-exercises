use strict;
use warnings;

while (<*.txt>) {
  if (-M $_ < 1) {
    print "(day)";
  } elsif (-M $_ < 7) {
    print "(week)";
  } else {
    print "(old)";
  }
  print "\t$_\n";
}
