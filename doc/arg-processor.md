The `arg-processor` argument processing system.
===============================================

Bashy-lib includes a full-featured argument processing system, which accepts an
argument/option syntax which hews closely to modern Posix(ish) de facto
standards, while innovating just a tad in order to help with robustness and
expressivity.

## Recognized syntax

As one might expect, the top-level syntax is that a set of valid arguments
consists of zero or more named options followed by zero or more positional
arguments.

Short options consist of a single dash (`-`) followed by a single letter, and in
this system such options are not allowed to accept values.

Long options all start with two dashes (`--`), followed by a series of
alphanumerics and more dashes, e.g. `--some-option`. In addition:

* A single value can be passed to an option by following the option name
  with an equal sign (`=`) and the arbitrary value, e.g. `--some-option='my
  value'`.

* Multiple values can be passed to an option by following the option name with
  a pair of square brackets and an equal sign (`[]=`) and then a series of
  space-separated words, with quotes recognized as delimiting words with
  special characters. Single-quoted (`'...'`) and dollar-quoted (`$'...'`)
  strings are interpreted in the shell-usual ways. Double-quoted (`"..."`)
  strings are treated like single-quoted; notably, they do not undergo any shell
  substitutions or backslash interpretation. E.g. `--some-option[]='this
  "and that" $'and other' 'things'`.

  This multi-value form will also work for options that don't allow values or
  allow only one value (though there are probably few reasons to favor this form
  in those cases).

  The helper function `vals` is a convenient way to safely pass multiple values
  without having to worry about quoting hygiene. (That is, the helper handles it
  for you.) For example, `--some-option[]="$(vals -- "${myArray[@]}")"`.

Special cases:
* A single dash (`-`) is interpreted as a non-option argument.
* A negative number, that is a dash followed by one or more digits, is
  interpreted as a non-option argument.
* An argument consisting of just two dashes (`--`) is taken to indicate the
  end of _option_ parsing, with all subsequent arguments taken to be positional
  even if they (seem to) have valid option syntax.
* If an option is a toggle, then:
  * Prefixing its long name with `no-` turns it off.
  * Specifying a value of `0` or `1` sets it to on or off explicitly.

Examples:

```bash
my-cmd -h                          # Short option.
my-cmd --help                      # Long option, no value.
my-cmd --size=27                   # Long option, with value.
my-cmd --colors[]='red green blue' # Long option, multi-value.
my-cmd --no-florp                  # Long option, turning off a toggle.
my-cmd --florp=1                   # Long option, setting a toggle explicitly.
my-cmd some-argument               # One positional argument.
my-cmd -                           # One positional argument.
my-cmd -34                         # One positional argument.
my-cmd -- --foo                    # One positional argument, literally `--foo`.

# Passing arbitrary strings safely to a multi-value option.
my-cmd --strings[]="$(vals -- "${paths[@]}")"
```

## Declaring arguments, and performing parsing

**Note:** TODO! More detail to be coming soon. In the mean time, see the long
header comment at the top of `arg-processor.sh` for an overview, the function
headers on the argument definers in the same file for a bit more detail, and the
`argument parsing` sections of all the included commands and tests for a rich
set of examples.

### Options

#### `opt-action [--call=<call>]  [--var=<var> [--default=<value>]] [--] <spec>`

Defines an "action" (non-toggle-able switch) option.

#### `opt-alias [--] <spec> [<option> ...]`

Defines an alias option.

#### `opt-multi [--required] [--call=<call>] [--var=<var>] [--filter=<filter> | --enum[]=<names>] [--] <spec>`

Defines a multi-value option.

#### `opt-toggle [--call=<call>]  [--var=<var> [--default=<value>]] [--] <spec>`

Defines a toggle (on/off) option.

#### `opt-value [--required] [--call=<call>] [--var=<var> [--default=<value>]] [--filter=<filter> | --enum[]=<names>] [--] <spec>`

Defines a (single) value option.

### Positional arguments

#### `positional-arg [--required] [--call=<call>] [--var=<var> [--default=<value>]] [--filter=<filter> | --enum[]=<names>] [--] <spec>`

Defines a positional argument.

#### `rest-arg [--call=<call>] [--var=<var> [--default=<value>]] [--filter=<filter> | --enum[]=<names>] [--] <spec>`

Defines a "rest" argument (consuming zero or more arguments at the end of a
commandline).

### Processing, etc.

#### `post-process-args-call <cmd> <arg> ...`

Adds a call to be queued up to perform arbitrary post-processing (such as
consistency checking) which gets called after initial argument processing is
complete and considered successful.

#### `process-args <arg> ...`

Processes the given arguments, according to all of the defined positional
arguments, options, and post-processing directives.

#### `replace-value <value>`

Used in the implementation of `--filter` calls to replace the originally-passed
value.

#### `require-exactly-one-arg-of <name> ...`

Adds a post-processing call which fails if there is not exactly one of the
given named arguments present in the arguments passed to `process-args`.
