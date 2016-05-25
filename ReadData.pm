use strict;
use warnings;
use Exporter;

sub readURL{
	my $url = shift;
	my $ua = LWP::UserAgent->new();
	$ua->ssl_opts( 'verify_hostname' => 0 );
	my $res = $ua->get($url);
	print $res->content;
}

sub readFile{
	my $file = shift;
	unless(open FILE, $file) {
    	die "Cannot open the file","\n"
	}
	# Get rid of the line separator.
	# This allows us to read everything
	# in one go.
	undef $/;
	my $contents = <FILE>;
	print "Read".length($contents)."bytes","\n";
	close FILE;
}

}

1;