# MD5

A small light weight MD5 hash program written in perl

---

## License

The MIT License (MIT)

Copyright (c) 2016 Chris 'CJ' Jones

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

---

## Change log

* Changed command line arguments to proper options
* Added hashing of files as well as strings

---

## Usage

```
md5 [option] [string [string [...]]]
```

---

### Options

* h Print this help file
* v Print version info
* f String(s) is/are files
* p Use plain hash
* b Use base64 hash
* x Use HEX hash (default)

### String

This is the input to be MD5 encoded. This can be a single string, a space seperated list of strings, a file name or space separated list of file names.

---

## Required Perl Modules

* Digest-MD5-File

---

## Installing

### Linux

Put file in ```/usr/bin``` and ```chmod 755```

May have to add the perl package "Digest-MD5-File" depending on distro and standard perl install.

Ready to use.

### Windows

This may sound funny but install perl first. Windows does not come with perl installed as standard.

You can get perl by going to [https://www.perl.org/get.html](https://www.perl.org/get.html)

Add the perl package "Digest-MD5-File" (`ppm install Digest-MD5-File` for ActiveState Perl)

Remove the first line of the script `!#/usr/bin/perl`

Put file in a standard location and add that location to the PATH variable.

You may have to add the ".pl" extention to the PATHEXT variable.

Ready to use.

### MAC

*Unknown help would be appreciated*
