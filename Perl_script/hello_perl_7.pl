#!/usr/bin/perl 
#
# Hello perl_7
#

use strict;
use warnings;

unless ( open(OUTPUT, ">outputfile") ) {

	print "Cannot open file \"outputfile\" to write to!!\n\n";
	exit;
	
}


print "Type in the word your want to show us:\n";

my $word = <STDIN>;
chomp $word;

print "Type in the number your want to repeat:\n";

my $number = <STDIN>;
chomp $number;

for (my $count = 1; $count < $number; $count++) {

my $fused_word = "\nHello".$word."\n";

print OUTPUT $fused_word;

}
