#!/usr/bin/perl --

use strict;
use lib qw(lib);

use Filesys::DiskUsage;
use Filesys::DiskUsage::Fast;

use Number::Bytes::Human qw(format_bytes);

my $dir = shift @ARGV // './';
printf "dir: %s\n", $dir;

# disk
do {
	my $total = Filesys::DiskUsage::du( { dereference => 1 }, $dir );
	printf "DiskUsage      : %u (%s)\n", $total, format_bytes( $total );
};

# disk fast
do {
	my $total = Filesys::DiskUsage::Fast::du( $dir );
	printf "DiskUsage::Fast: %u (%s)\n", $total, format_bytes( $total );
};

__END__
