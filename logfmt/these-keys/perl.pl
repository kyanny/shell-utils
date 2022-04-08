#!/usr/bin/env perl
# Usage:
#   echo a=A b=B c=C | perl $0 b c
#   B
#   C
use strict;
use warnings;
use feature 'say';
use List::Util qw(pairs);

my @keys = @ARGV;
undef @ARGV;

while(<>){
    my @pairs = /(\S+)=("[^"]"|\S+)/g;
    foreach my $pair (pairs @pairs) {
        foreach my $key (@keys) {
            if ($key eq $pair->[0]) {
                say $pair->[1];
            }
        }
    }
}
