#!/usr/bin/perl 
#
# Hello perl_5
#

use strict;
use warnings;

print "Type in the word your want to show us:\n";

my $word = <STDIN>;
chomp $word;

print "Type in the number your want to repeat:\n";

my $number = <STDIN>;
chomp $number;

for (my $count = 0; $count < $number; $count++) {

my $fused_word = "\nHello".$word."\n\n";

print $fused_word;

}
