use strict;
use warnings;
use Module::Build;

# OS check
if( $^O eq 'MSWin32' ){
    printf STDERR "No support for OS $^O.\n";
    exit 1;
}

my $builder = Module::Build->new(
    module_name         => 'Filesys::DiskUsage::Fast',
    license             => 'perl',
    dist_author         => 'Ryo Okamoto <ryo at aquahill dot net>',
    dist_version_from   => 'lib/Filesys/DiskUsage/Fast.pm',
    include_dirs        => ['.'],
    configure_requires => {
	'Module::Build' => 0,
    },
    build_requires => {
	'Scalar::Util' => 0,
	'Test::More' => 0,
	'Test::LeakTrace' => 0,
    },
    add_to_cleanup      => [ 'Filesys-DiskUsage-Fast-*' ],
    meta_add => {
	resources => {
	    repository => 'https://github.com/ryochin/p5-filesys-diskusage-fast',
	},
    },
);

$builder->create_build_script();
