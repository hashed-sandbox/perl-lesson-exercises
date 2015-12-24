use strict;
use warnings;

sub get_date {
  my ($mday, $mon, $year) = (localtime)[3..5];
  my @items = ($year + 1900, $mon + 1, $mday);
  wantarray ? @items : join('-', @items);
}

my @date = get_date;
print join(', ', @date), "\n";

my $date = &get_date;
print $date, "\n";
