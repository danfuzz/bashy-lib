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

Long options consist of two dashes (`--`) followed by a series of alphanumerics
and more dashes. For options that accept one value (or more), the option name
can be followed by an equal sign (`=`) and the option value. For options that
accept _more_ than one value, the option can be followed by an open square
bracket (`[`) and then a series of strings in shell syntax (including unquoted
words if there are no special characters) and then a final `]`. This multi-value
form will also work for options that don't allow values or allow only one
(though there are probably few reasons to favor the form in those cases).

The helper function `vals` is a convenient way to safely pass multiple values
without having to worry about quoting hygiene. (That is, the helper handles it
for you.)

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
my-cmd --colors['red green blue']  # Long option, multi-value.
my-cmd --no-florp                  # Long option, turning off a toggle.
my-cmd --florp=1                   # Long option, setting a toggle explicitly.
my-cmd some-argument               # One positional argument.
my-cmd -                           # One positional argument.
my-cmd -34                         # One positional argument.
my-cmd -- --foo                    # One positional argument, literally `--foo`.

# Passing arbitrary strings safely to a multi-value option.
my-cmd --strings["$(vals "${arrayOfStrings[@]}")"]
```

## Declaring options

TODO! Coming soon! In the mean time, see the source of all the included commands
and tests for a rich set of examples.