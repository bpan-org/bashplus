bashplus
========

A Collection of Useful Bash Functions


## Synopsis

```
source "$PROJECT_ROOT/.bpan/lib/bpan.bash" --
bpan:source bashplus

+on-macos && echo "I'm on a Mac"
```


## Description

The bashplus library defines dozens of useful Bash functions to make Bash
programs much more readable.


## Functions

* `+1:x <cmd> <args>...`

  Run command and send stdout to `/dev/null`.

* `+2:1 <cmd> <args>...`

  Run command and send stderr to stdout (`2>&1`).

* `+2:x <cmd> <args>...`

  Run command and send stderr to `/dev/null`.

* `+o:x <cmd> <args>...`

  Run command and send stdout + stderr to `/dev/null`.

* `+assert-cmd <name>`

  Die unless name is a PATH command.

* `+assert-cmd-ver <name> <version>`

  Die unless name is a command at or above a given version.

* `+assert-perl [<perl-version>]`

  Die unless `perl` is a command at or above a version.

* `+assert-sed [<sed-version>]`

  Die unless `perl` is a command at or above a version.

* `+can <name>`

  Die unless name is a callable function or command.

* `die <msg>`

  Print an error message and exit with status 1.

* `error <msg>`

  Die with message in red: `Error: $msg`.

* `+is-bash32+`

  Return 1 unless current bash is version 3.2 or higher.

* `+is-bash40+`

  Return 1 unless current bash is version 4.0 or higher.

* `+is-bash41+`

  Return 1 unless current bash is version 4.1 or higher.

* `+is-bash42+`

  Return 1 unless current bash is version 4.2 or higher.

* `+is-bash43+`

  Return 1 unless current bash is version 4.3 or higher.

* `+is-bash44+`

  Return 1 unless current bash is version 4.4 or higher.

* `+is-bash50+`

  Return 1 unless current bash is version 5.0 or higher.

* `+is-bash51+`

  Return 1 unless current bash is version 5.1 or higher.

* `+is-cmd <name>`

  Return 1 unless name is a command in PATH.

* `+is-cmd-ver <name> <version>`

  Return 1 unless name is a command at or above a version.

* `+is-file-same <file1> <file2>`

  Return 1 unless file1 and file2 have same content.

* `+is-file-diff <file1> <file2>`

  Return 1 unless file1 and file2 have different content.

* `+is-func <name>`

  Return 1 unless name is a bash function.

* `+is-online`

  Return 1 unless the internet (8.8.8.8) is reachable.

* `+mktemp`

  A wrapper around mktemp that removes the file or directory on exit.
  Also normalizes file permissions.

* `+os-linux`

  Return 1 unless running on Linux.

* `+os-macos`

  Return 1 unless running on macOS.

* `+path <path>...`

  When called with no args, prints each directory in `$PATH` on a line.
  Otherwise add each path to the front of `PATH` after removing any instance
  of path from `PATH`.

  Can be used on any PATH-like variable, like `MANPATH`, by calling like:
  `_PATH_=MANPATH +path /foo /bar`.

* `+sort`

  Sort stdin in true code point order.

* `+sym [<prefix>]`

  Generate a unique symbol that can safely be used an anonymous bash variable
  or function name.
  ```
  var=$(+sym)
  printf -v "$var" '%s' 'Hello world'
  echo "${!var}"
  ```

* `+trap <bash-code> [<signal>]`

  A wrapper around bash' `trap` that you can use multiple times.
  Normally there can only be one trap per signal type.

* `+version-ge <version1> <version2>`

  Return 1 unless version1 is greater than or equal to version2.

* `+version-gt <version1> <version2>`

  Return 1 unless version1 is greater than to version2.

* `+warn <msg>`

  Print a msg to stderr.


## Copyright and License

Copyright 2022 by Ingy döt Net

This is free software, licensed under:

The MIT (X11) License
