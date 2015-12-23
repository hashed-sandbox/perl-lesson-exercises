use strict;
use warnings;

my $size;
my @chars = qw(x * ! * % / * + - ! . * * % / * +);

# a small tree
$size = 6;
foreach my $i (1..$size) {
  my $margin = ' ' x ($size - $i);
  print $margin;
  foreach (1..(2 * $i - 1)) {
    if ($_ <= $i) {
      print $chars[$_];
    } else {
      print $chars[2 * $i - $_];
    }
  }
  print $margin, "\n";
}

# a large tree
$size = 16;
foreach my $i (1..$size) {
  my $margin = ' ' x ($size - $i);
  print $margin;
  foreach (1..(2 * $i - 1)) {
    if ($_ <= $i) {
      print $chars[$_];
    } else {
      print $chars[2 * $i - $_];
    }
  }
  print $margin, "\n";
}
