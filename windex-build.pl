#!/usr/bin/perl -w
use strict;
use LWP::UserAgent;
use warnings;
use ValidateArgs;
use ReadURLs;


my ($name, $starturl, $excludeFile, $depth , $dir) = validateArgs(@ARGV);

# print "name: '$name' ", "\n", "starturl: '$starturl' ", "\n", "excludeFile: '$excludeFile' ", "\n", "depth : '$depth' ", "\n", "dir: '$dir'" , "\n" ;
readURL($starturl);
getLinks($starturl);

sub getLinks {
	my($startUrl) = shift;
	my $mech = WWW::Mechanize->new();
	$mech->get( $startUrl );

	# get the links from that page
	my @links = $mech->find_all_links();
	my @viewedArray;
	for my $link ( @links ) {
		if ($link->text =~ /([A-Z])\w+/){
			# WRITE TO FILE IN HERE
			push @viewedArray, $link->url;
		}
	}
	return @viewedArray
}

	



