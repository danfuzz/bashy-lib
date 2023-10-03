Bashy-lib
=========

[![Test](https://github.com/danfuzz/bashy-lib/actions/workflows/main.yml/badge.svg)](https://github.com/danfuzz/bashy-lib/actions/workflows/main.yml)

<blockquote><i>
"Using Bash-3.2 plus the intersection of BSD and GNU tools is the worst form
of commandline scripting, except for all those other forms that have been tried
from time to time." &mdash; @danfuzz, with apologies to Sir Winston Churchill
</i></blockquote>

- - - - - - - - - -

This is a "core library" of sorts for Bash, containing a bunch of stuff that
I (@danfuzz) have found useful when developing new tools in Bash, along with
some generally-useful utilities.

It is structured such that library units (sub-libraries) may be composed into a
unified whole, _mostly_ without interfering with each other, and _mostly_
without code duplication.

### Stability note

The 1.0 release is stable but not recommended for use.

The 2.* series of releases isn't yet stable. You can still expect breaking
changes with each release. Expect a stable release sometime in 2024.

## To use included commands

1. Copy the `scripts` directory from this project (or its contents) to a
   directory that is part of your `$PATH`. You need to include the directory
   `lib/bashy-core`, but the other directories under `lib` are all optional.

2. To use a Bashy-lib command from the command line, call `ubik` and pass it
   the (possibly-hierarchical) name of the command, e.g.:

   ```
   $ ubik timey secs now
   1685569338
   $
   ```

   Just saying `ubik` will list all the available commands. Every command
   responds to `--help` with a decently-detailed description.

2. To call a Bashy-lib command from one of your own scripts, either:

   * Recommended: Include the top-level `_init.sh` from your script, and then
     call `lib` with the (possibly-hierarchical) command, e.g.:

     ```bash
     . "$(dirname "$(readlink -f "$0")")/_init.sh" || exit "$?"

     ...
     nowSecs="$(lib timey secs now)"
     ...
     ```

   * Not recommended: Just use `ubik` as above. (Not recommended because it is
     less efficient, in that it does extra stuff to be a nice interactive
     command.)

### Setup for even better interactive use

The top-level script named `ubik` (so named for historical reasons) is a
general dispatcher, which can be called like `ubik <command> <args>`, where
`<command>` is any command defined in the `lib` next to the `ubik` script.

You can of course set your `$PATH` to include the `scripts` directory in
question, however it's often useful to be able to switch from project to project
without having to reset the `$PATH`. To that end, you can include the contents
of the file `scripts/lib/bashy-core/ubik-interactive.sh` in your interactive
setup, e.g. by using `. .../ubik-interactive.sh` or by just pasting its
contents directly (it is self-contained).

`ubik-interactive.sh` defines a shell function called `ubik`. This function
searches up the directory hierarchy from the CWD for an `ubik` script to run (in
a `bin` or `scripts` directory), and if it finds one it will run it with
whatever arguments you passed to the function.

## To extend with your own library

### Basic directory layout

```
project-base-directory/
  scripts/
    _init.sh -- boilerplate init file
    top-level-script
    top-level-script
    ubik -- general library caller (copy from this project)
    lib/
      _init.sh -- boilerplate (mostly) init file
      bashy-core/ -- copy of directory from this project
      other-lib/ -- copy of other library (from this project or elsewhere)
      my-project/
        _init.sh -- boilerplate init file
        _prereqs -- unit-specific prerequisites checker (optional)
        _setup.sh -- unit-specific setup (optional)
        project-script
        project-script
        project-subcommand-dir/
          _init.sh -- boilerplate init file
          _run -- default subcommand script (optional)
          subcommand-script
          subcommand-script
          subsub-dir/
            _run -- default subcommand script (optional)
            subcommand-script
        project-subcommand-dir/
          _init.sh -- boilerplate init file
          _run -- default subcommand script (optional)
          subcommand-script
          subcommand-script
```

### TLDR

* Copy the `scripts` directory of this project.

* Put your scripts in one of two places:
  * A unit (sub-library) directory for your project in `scripts/lib`.
  * Directly in `scripts` (if they don't need to be called by other scripts).

* Put a non-executable file called `_init.sh` in every directory where a script
  lives. This file is included by your scripts and serves to link them up to the
  main library.

* Put the following line at the top of every script:

  ```bash
  . "$(dirname "$(readlink -f "$0")")/_init.sh" || exit "$?"
  ```

### Detailed Instructions

1. Pick a name for your project's "script library" directory, typically at the
   top level of your project. `scripts` and `bin` are good choices.

   The rest of these instructions assume you picked `scripts`, for ease of
   exposition. Adjust accordingly.

2. Pick a symbolic name for your project / product, e.g. that can (and will) be
   used as a directory name.

   The rest of these instructions assume you named your project `my-project`.
   Adjust accordingly.

3. Copy the items from the `scripts` directory in _this_ project, that you are
   interested in using, into `scripts` in your project. At a minimum, you need
   to include the `lib/bashy-core` and `lib/_init.sh`. The files directly in
   `scripts` (`_init.sh` and `ubik`) are needed if you want to expose library
   scripts "publicly" in `scripts` (at least, in the standard way supported by
   this project).

   **Note:** `lib/_init.sh` file will need to be adjusted if `scripts` is not
   directly under your project's base directory.

4. Make a directory for your own script sub-library, `scripts/lib/my-project`.

5. Create a file called `scripts/lib/my-project/_init.sh`, to hook up
   your project's script sub-library to `bashy-core`. The file should just
   contain this:

   ```bash
   . "${BASH_SOURCE[0]%/lib/*}/lib/_init.sh" || return "$?"
   ```

6. Create one or more scripts in `scripts/lib/my-project`, or directly in
   `scripts`. At the top of each script, include the following:

   ```bash
   . "$(dirname "$(readlink -f "$0")")/_init.sh" || exit "$?"
   ```

   **Note:** Scripts directly in `scripts` should generally not be called from
   other scripts. See below about "exposing" a script in your unit for direct
   "public" calling.

7. Create one or more subcommand directories in `scripts/lib/my-project`. Add
   an `_init.sh` file to it (same as in step 5), and one or more scripts or
   subcommand directories (same as step 6 or this step).

8. To expose a script in a unit for direct "public" usage, create a script with
   the same name as the script in the top-level `scripts` directory, with the
   following contents, which causes it to call through to the unit script:

   ```bash
   #!/bin/bash

   . "$(dirname "$(readlink -f "$0")")/_init.sh" || exit "$?"
   lib "$(this-cmd-name)" "$@"
   ```

**Note:** The files named with a `.sh` suffix are _not_ supposed to be marked
executable (`chmod +x ...`). These are _include_ files.

### To add per-subproject subcommand-script

Sometimes it makes sense to define subprojects as separate directories within
a project. In such cases, you may still want to have those subprojects' scripts
be available in the top level project for interactive or script-available use
(or both). Bashy-lib makes this arrangement possible via symlinking either per
se or via "reified link" files (a text file containing the path, which may be
preferable because of source control concerns). *Relative* reified links are
taken to use the main project base directory as the base directory of the link.

For example, let's say you have a directory `my-subproject` under your main
project, which has its own `scripts` directory. Using symlinks per se:

```bash
$ cd my-project/scripts/lib/my-project # Your project's main scripts.
$ ln -s ../../../my-subproject/scripts my-subproject
```

Or using a reified link file:

```bash
$ cd my-project
$ echo 'my-subproject/scripts' > scripts/lib/my-subproject.link
```

With that, you can now say `ubik my-subproject ...` or (in scripts) `lib
my-subproject ...`.
