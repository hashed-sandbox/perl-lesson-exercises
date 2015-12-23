use strict;
use warnings;

my %dictionary = (
  'twinkle' => 'きらきら', 'little' => 'ちいさな', 'star' => 'ほし',
  'how' => 'いかに', 'i' => 'わたし', 'wonder' => 'おどろく', 'what' => 'なに',
  'you' => 'あなた', 'are' => 'である', 'up' => 'うえ', 'above' => 'うえに',
  'the' => 'その', 'world' => 'せかい', 'so' => 'とても', 'high' => 'たかい',
  'like' => 'みたい', 'a' => 'ひとつの', 'diamond' => 'ダイヤモンド',
  'in' => 'なかに', 'sky' => 'そら',
);

open(FILE, 'twinkle.txt') or die "$!";
foreach (<FILE>) {
  s/\w+/$dictionary{lc $&}/eg;
  s/, ?/、/g;
  s/\./。/g;
  print;
}
close(FILE);
