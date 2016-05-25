use strict;
use warning;


# this function takes a filename and also the content needs to
# be written into the file
sub writeToFile{
	# get the first element as the file name
	my $file = shift;
	unless(open FILE, '>'.$file) {
		die "cannot create a file","\n";
	}
	# write the next argument to the file
	print FILE shift;
}
1;