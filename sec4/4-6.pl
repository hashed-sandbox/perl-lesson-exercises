use strict;
use warnings;

my @info = (
  'hyuki@hyuki.com:Hiroshi Yuki:37',
  'hanako@hyuki.com:Hanako Sato:33',
  'tomura@hyuki.com:Tomura:22',
);

print "<html><table border=\"1\">\n";

foreach (@info) {
  my ($email, $name, $age) = split(/:/, $_);
  print "<tr><td>$email</td><td>$name</td><td>$age</td></tr>\n";
}

print "</table></html>\n";
