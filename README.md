# NAME

Filesys::DiskUsage::Fast - A fast disk usage counter (du) with XS

# SYNOPSIS

    use Filesys::DiskUsage::Fast qw(du);
    

    my $total = du( $dir );
    my $total = du( $dir1, $dir2, ... );

# DESCRIPTION

A simple but fast disk usage counter implemented as XS module.

# FUNCTIONS

- __du()__

    Returns total byte number contained in directories specified.

        my $total = du("/usr/local");
        my $total = du("/bin", "/sbin", "/usr/bin", "/usr/sbin");

# GLOBAL VARIABLES

- __$ShowWarnings__

    If true, errors will be warn()ed. Default is true.
    Set false to suppress warnings (not found, permission denied etc).

        local $Filesys::DiskUsage::Fast::ShowWarnings = 0;
        du(...);

# PERFORMANCE

    s/iter   pp   xs
 pp   1.35   -- -85%
 xs  0.197 584%   --

tested on a directory contains around 11GB 3300+ files, CentOS 5 (HDD).

# CAVEAT

All symbolic links always result 0 byte. Block, FIFO and other special files may not be counted accurately.

# DEPENDENCY

None

# SEE ALSO

Filesys::DiskUsage, Number::Bytes::Human

# REPOSITORY

https://github.com/ryochin/p5-filesys-diskusage-fast

# AUTHOR

Ryo Okamoto, `<ryo at aquahill dot net>`

# COPYRIGHT & LICENSE

Copyright 2012 Ryo Okamoto, All Rights Reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.
