Bashy-Lib User Guide
====================

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

## Setup for even better interactive use

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

- - - - - - - - - -
```
Copyright 2022-2025 the Bashy-lib Authors (Dan Bornstein et alia).
SPDX-License-Identifier: Apache-2.0
```
