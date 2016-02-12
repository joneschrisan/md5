#!/usr/bin/perl

use Switch;
use Digest::MD5 qw(md5 md5_hex md5_base64);

sub run {
    $out = "";
    
    switch (@_[0]) {
        case "plain" { $out = md5(@_[1]); }
        case "base64" { $out = md5_base64(@_[1]); }
        case "hex" {$out = md5_hex(@_[1]);  }
        else { $out = md5_hex(@_[1]); }
    }
    
    return $out;
}

@types = ('plain', 'hex', base64);

$len = scalar(keys @ARGV);

if ($len eq 0) {
    die("An argument must be provided\n");
} else {
    $first = shift @ARGV;
    if (grep $_ eq $first, @types) {
        # Do nothing.
    } else {
        unshift @ARGV, $first;
        $first = NUL;
    }
    
    foreach $arg (@ARGV) {
        print run($first, $arg) . "\n";
    }
}