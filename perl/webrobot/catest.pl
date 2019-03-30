#!/usr/bin/perl -w

use IO::Socket::SSL;
use Mozilla::CA;
 
my $host = "www.paypal.com";
my $client = IO::Socket::SSL->new(
    PeerHost => "$host:443",
    SSL_verify_mode => 0x02,
    SSL_ca_file => Mozilla::CA::SSL_ca_file(),
)
    || die "Can't connect: $@";
 
$client->verify_hostname($host, "http")
    || die "hostname verification failure";

