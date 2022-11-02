#!/usr/bin/perl -w
#===============================================================================
#
#         FILE: magnum.pl
#
#        USAGE: ./magnum.pl <input_file>
#
#  DESCRIPTION: Converts utf-8 Etymologicum Magnum lexicon from TLG to dsl format
#
#       AUTHOR: proteus (), proteus@softhome.net
#      VERSION: 1.0
#      CREATED: 05/28/2021
#===============================================================================

use strict;
use warnings;
use utf8;
use File::Slurp::Unicode;
binmode STDOUT, ":utf8";

my $lex_text = shift @ARGV;
my $lex = read_file($lex_text, encoding => 'utf8' );
my @lemas = split( /<(.*?)>\:/, $lex);
shift @lemas;
my $last = $#lemas;

for (my $l = 0; $l < $last; $l += 2){
  my $head = lc($lemas[$l]);
  $head =~ s/>|<//g;
  my $body = $lemas[$l+1];
  $body =~ s/\n?\s+/ /gs;
  $body =~ s/\- //g;
  $body =~ s/\</[b]/gs;
  $body =~ s/\>/[\/b]/gs;
  print "$head\n";
  print "\t[m1]$body\n";
}

