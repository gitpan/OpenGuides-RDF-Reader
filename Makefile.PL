

use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'OpenGuides::RDF::Reader',
    VERSION_FROM => 'lib/OpenGuides/RDF/Reader.pm', # finds \$VERSION
    AUTHOR       => 'Ivor Williams (ivorw-openguides@xemaps.com)',
    ABSTRACT     => 'Reader for OpenGuides RDF',
    PREREQ_PM    => {
                     'Test::Simple' => 0.44,
		     'XML::Simple' => 0,
                    },
);
