#!/usr/bin/perl
#
# Perl function to turn a dotted quad netmask into CIDR notation
# Lawrence Billson, 2016


sub netmask2cidr {
        my $a =  unpack('N', (pack 'C4', split(/\./,shift)));
        return 32 - (log(2**32 - $a)/log(2));
        }



$quad = $ARGV[0];

print "Quad is $quad\n";

$cidr = netmask2cidr($quad);

print "CIRD is $cidr\n";
