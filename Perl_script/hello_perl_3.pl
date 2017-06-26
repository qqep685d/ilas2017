#!/usr/bin/perl 
#
# Hello perl_3
#

use strict;
use warnings;

print "Type in the word your want to show us:\n";

my $word = <STDIN>;
chomp $word;


my $fused_word = "\nHello".$word."\n\n";

print $fused_word;