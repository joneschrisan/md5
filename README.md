# MD5

A small light weight MD5 hash program written in perl

Now hashes strings and files

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
