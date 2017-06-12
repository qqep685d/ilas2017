#!/usr/bin/perl 
#
# Hello perl_8
#

use strict;
use warnings;

my $seq_line = '';
my $adenin = 0;
my $guanin = 0;
my $cytosin = 0;
my $thymin = 0;
my @seq_line1 = ();

while ( my $line1 = <>) {

chomp $line1;

$seq_line = $seq_line . $line1;

}

@seq_line1 = split '', $seq_line;

foreach my $nuc (@seq_line1)  {

if ($nuc eq 'A')  {

   $adenin++;
}

elsif ($nuc eq 'G') {

   $guanin++;
}

elsif ($nuc eq 'C') {
   $cytosin++;
}

elsif ($nuc eq 'T') {
   $thymin++;
}

}

print "A= $adenin\n";
print "G= $guanin\n";
print "C= $cytosin\n";
print "T=  $thymin\n";
