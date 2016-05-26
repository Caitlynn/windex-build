use strict;
use warnings;
use Exporter;


# this method takes a url as input and put the content in the url to a scalar
#returns the scalar
sub readURL{
	my $url = shift;
	my $ua = LWP::UserAgent->new();
	$ua->ssl_opts( 'verify_hostname' => 0 );
	my $res = $ua->get($url);
	print $res->content;
	return $res->content;
}

# this method takes a file and a text that needs to be match as input
# searching the text in the file and prints out the line with the seaching text
sub readFile{
	my $file = shift;
	my $text = shift;
	open(my $fn, '<', $file) or die "can't open the file '$file'!". "\n";
	while (my $line = <$fh>){
		if ($line =~ $text){
			# need to modify here
			print $line;
		}
	}
}

}

1;