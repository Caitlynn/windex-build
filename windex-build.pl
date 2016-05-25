#!/usr/bin/perl -w
use strict;
use warnings;

use ValidateArgs;


my ($name, $starturl, $excludeFile, $depth , $dir) = validateArgs(@ARGV);



print "name: '$name' ", "\n", "starturl: '$starturl' ", "\n", "excludeFile: '$excludeFile' ", "\n", "depth : '$depth' ", "\n", "dir: '$dir'" , "\n" ;


