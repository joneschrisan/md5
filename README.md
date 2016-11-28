# MD5

A small light weight MD5 hash program written in perl

---

## Usage

```
md5 [type] [string [string [...]]]
```

---

### Types

A type does not have to be give and hex will be chosen instead by default

* plain
* hex (default)
* base64

### String

This is the input to be MD5 encoded. This can be a single string or a space seperated list of strings.

---

## Installing

### Linux

Put file in ```/usr/bin``` and ```chmod 755```

Ready to use.

### Windows

This may sound funny but install perl first. Windows does not come with perl installed as standard.

You can get perl by going to [https://www.perl.org/get.html](https://www.perl.org/get.html)

Remove the first line of the script `!#/usr/bin/perl`

Add the perl package "Switch" (`ppm install Switch` for ActiveState Perl)

Put file in a standard location and add that location to the PATH variable.

You may have to add the ".pl" extention to the PATHEXT variable.

Ready to use.

### MAC

*Unknown help would be appreciated*
