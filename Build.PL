use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Filesys::DiskUsage::Fast',
    license             => 'perl',
    dist_author         => 'Ryo Okamoto <ryo at aquahill dot net>',
    dist_version_from   => 'lib/Filesys/DiskUsage/Fast.pm',
    include_dirs        => ['.'],
    build_requires => {
        'Scalar::Util' => 0,
    },
    requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Filesys-DiskUsage-Fast-*' ],
);

$builder->create_build_script();
