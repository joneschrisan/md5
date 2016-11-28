##################################################################################
# The MIT License (MIT)                                                          #
#                                                                                #
# Copyright (c) 2016 Chris 'CJ' Jones                                            #
#                                                                                #
# Permission is hereby granted, free of charge, to any person obtaining a copy   #
# of this software and associated documentation files (the "Software"), to deal  #
# in the Software without restriction, including without limitation the rights   #
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell      #
# copies of the Software, and to permit persons to whom the Software is          #
# furnished to do so, subject to the following conditions:                       #
#                                                                                #
# The above copyright notice and this permission notice shall be included in all #
# copies or substantial portions of the Software.                                #
#                                                                                #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR     #
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,       #
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE    #
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  #
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  #
# SOFTWARE.                                                                      #
##################################################################################

use Getopt::Std;
use Digest::MD5::File qw(md5 md5_hex md5_base64 file_md5 file_md5_hex file_md5_base64);

$version = "1.0.00";

sub run {
    $out = "";
    
    if (@_[0] eq "p") {
    	if (@_[2] eq "f") {
    		$out = file_md5(@_[1]);
    	} else {
    		$out = md5(@_[1]);
    	}
	} elsif (@_[0] eq "b") {
		if (@_[2] eq "f") {
    		$out = file_md5_base64(@_[1]);
    	} else {
    		$out = md5_base64(@_[1]);
    	}
	} elsif (@_[0] eq "x") {
		if (@_[2] eq "f") {
    		$out = file_md5_hex(@_[1]);
    	} else {
    		$out = md5_hex(@_[1]);
    	}
	} else {
		if (@_[2] eq "f") {
    		$out = file_md5_hex(@_[1]);
    	} else {
    		$out = md5_hex(@_[1]);
    	}
	}
    
    return $out;
}

@types = ('plain', 'hex', base64);

getopts("fvhpbx", \%opts);

print grep { /h/ } %opts;
print "\n";

if (grep { /h/ } %opts) {
	print "\n";
	print "MD5 - " . $version . "\n";
	print "\n";
	print "Author Chris 'CJ' Jones\n";
	print "\n";
	print "Copywrite Chris 'CJ' Jones 2016";
	print "\n";
	print "Website https://github.com/joneschrisan/md5\n";
	print "\n";
	print "Usage\n";
	print "   md5 [options] [string [string [...]]]\n";
	print "\n";
	print "h Print this help file\n";
	print "v Print version info\n";
	print "f String(s) is/are files\n";
	print "p Use plain hash\n";
	print "b Use base64 hash\n";
	print "x Use HEX hash (default)\n";
	exit();
} elsif (grep { /v/ } %opts) {
	print $version;
	print "\n";
	exit();
} else {
	$len = scalar(keys @ARGV);

	if ($len eq 0) {
		die("An argument must be provided\n");
	}
	
	$opt = "x";
	if (grep { /p/ } %opts) {
		$opt = "p";
	} elsif (grep { /b/ } %opts) {
		$opt = "b";
	}
	
	if (grep { /f/ } %opts) {
		foreach $arg (@ARGV) {
			if (-e $arg) {
				print run($opt, $arg, "f") . "\n";
			}
		}
	} else {
		foreach $arg (@ARGV) {
		    print run($opt, $arg) . "\n";
		}
	}
}
