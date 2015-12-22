use strict;
use warnings;

my $kanji = '三';

# use a hash
my %hash = (
  '〇' => 0, '一' => 1, '二' => 2, '三' => 3, '四' => 4,
  '五' => 5, '六' => 6, '七' => 7, '八' => 8, '九' => 9,
);
print "$kanji -> $hash{$kanji}\n";

# use an array
my @array = qw(〇 一 二 三 四 五 六 七 八 九);
my $num = 0;
foreach (@array) {
  if ($_ eq $kanji) {
    print "$kanji -> $num\n";
  } else {
    $num++;
  }
}
