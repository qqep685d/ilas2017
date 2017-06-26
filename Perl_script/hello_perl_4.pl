#!/usr/bin/perl 
#
# Hello perl_4
#

use strict;
use warnings;

print "Type in the word your want to show us:\n";

my $word = <STDIN>;
chomp $word;

for (my $count = 1; $count < 10; $count++) {

my $fused_word = "\nHello".$word."\n\n";

print $fused_word;

}