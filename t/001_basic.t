# -*- perl -*-

# t/001_basic.t - Basic tests for RDF parsing

use strict;
use Test::More tests => 2;

#01
BEGIN { use_ok( 'OpenGuides::RDF::Reader' ); }

my $rdf_data = do { local (@ARGV, $/) = 't/sandbox.rdf'; <> };

my %page_data = parse_rdf($rdf_data);

#02
is_deeply( \%page_data, {
	username => 'Housekeeping Robot',
	changed => '2005-10-13T21:30:24',
	version => 74,
	source => 'http://london.openguides.org/index.cgi?Sandbox',
	country => 'United Kingdom',
	city => 'London',
	address => '1 High Street',
	postcode => 'WC5A 2YY',
	phone => '020 7456 7890',
	fax => '020 7654 3210',
	website => 'http://www.mysite.com',
	opening_hours => '24 by 7',
	latitude => 51.362603,
	longitude => -0.092219,
	summary => 'A page for testing the system.',
	category => [ 'Beer gardens' ],
	locales => [ 'West End' ],
	}, "Data matches expected from rdf");

