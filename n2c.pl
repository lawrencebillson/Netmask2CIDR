#!/usr/bin/perl

sub n2c {
	my $size = unpack('N', (pack 'C4', split(/\./,shift)));
	my $cidr;
	for ($cidr = 0; 2 ** 32 - (2 ** (32 - $cidr)) != $size; $cidr++) {};
	return ($cidr);
	}

$data = n2c($ARGV[0]);
print "/$data\n";
