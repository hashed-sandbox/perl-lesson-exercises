use strict;
use warnings;

opendir DIR, 'C:\\tmp' or die "$!";
foreach my $entry (sort readdir DIR) {
  print "$entry\n" unless ($entry =~ /^\.\.?$/);
}
