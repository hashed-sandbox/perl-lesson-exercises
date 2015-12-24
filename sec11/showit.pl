use strict;
use warnings;

if (@ARGV == 0) {
  print "Usage: perl showit.pl (filename|dirname)\n";
  exit;
}

my $path = shift @ARGV;
if (-f $path) {
  open(FILE, $path) or die "$path: $!";
  print "$_" while (<FILE>);
  close(FILE);
} elsif (-d $path) {
  opendir(DIR, $path) or die "$path: $!";
  print "$_\n" while (readdir(DIR));
  closedir(DIR);
}
