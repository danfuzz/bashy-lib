Bashy-Lib Developer Guide
=========================

This is a rough guide for adding and integrating new units (sub-libraries) to a
base Bashy-lib installation.

## TLDR

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

## Basic directory layout

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

## Detailed Instructions

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

## To add per-subproject subcommand-script

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

- - - - - - - - - -
```
Copyright 2022-2024 the Bashy-lib Authors (Dan Bornstein et alia).
SPDX-License-Identifier: Apache-2.0
```
