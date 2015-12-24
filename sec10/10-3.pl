use strict;
use warnings;

sub get_length_list {
  map { length $_ } @_;
}

my @data = ('How', 'I', 'wonder', 'what', 'you', 'are.', '');
print join(', ', &get_length_list(@data)), "\n";
