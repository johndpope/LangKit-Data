#!/usr/bin/perl

die "usage: stripLabels.pl <labeled input>\n" unless @ARGV == 1;
$file = $ARGV[0];

open IN, $file or die "Can't open $file for input: $!";

while (<IN>)
{
  s/\(\S+\s+([^\)]+)\)/$1/g;
  s/-LRB-/\(/g;
  s/-RRB-/\)/g;
  print;
}

close IN;

