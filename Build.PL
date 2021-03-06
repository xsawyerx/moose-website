use lib 'inc';
use Local::Moose::Website::Build;
my $self = Local::Moose::Website::Build->new(
    module_name        => 'Moose::Website',
    configure_requires => {
        'File::Path'    => 0,
        'Module::Build' => 0,
    },
    build_requires => {
        'Capture::Tiny'       => 0,
        'Encode'              => 0,
        'File::Next'          => 0,
        'File::Temp'          => 0,
        'File::Which'         => 0,
        'IPC::System::Simple' => 0,
        'MooseX::Getopt'      => 0,
        'Test::More'          => 0,
        'XML::LibXML'         => 0,
        'XML::LibXSLT'        => 0,
        'YAML::XS'            => 0,
    },
    requires => {
        'Locale::Maketext::Lexicon'  => 0,
        'Moose'                      => 0,
        'MooseX::Params::Validate'   => 0,
        'MooseX::Role::Parameterized'=> 0,
        'MooseX::Types::Path::Class' => 0,
        'Path::Class'                => 0,
        'Resource::Pack'             => 0.02,
        'Resource::Pack::jQuery'     => 0,
        'Template'                   => 0,
        'YAML::XS'                   => 0,
    },
);
die "perldoc Build.PL\n" unless $self->destdir && $self->args('locale');
$self->notes('locale' => $self->args('locale'));
$self->create_build_script;

__END__

=encoding UTF-8

=head1 SYNOPSIS

    perl Build.PL --destdir=out --locale=en
    ./Build test
    ./Build distclean
