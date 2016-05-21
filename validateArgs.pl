

use strict;

sub validateArgs {
	my @args = @_
	if (scalar @args < 3) {
		print "Please enter correct number of arguments";
		exit;
	}

	my $name = @args[0];
	my $starturl = @args[1];
	my $excludefile = @args[2];

	if (defined @args[3]){
		my $maxdepth = @args[3];
		if(defined @args[4]){
			my $dir = @args[4];
		}
	}

}

1;