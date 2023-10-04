## with --help

### stderr
```
the-cmd -- This is the short
help for the command.

This is the longer help.

the-cmd [--help | -h]

Displays this message.
```

### exit: 0

- - - - - - - - - -

## with -h

### stderr
```
the-cmd -- This is the short
help for the command.

This is the longer help.

the-cmd [--help | -h]

Displays this message.
```

### exit: 0

- - - - - - - - - -

## short help from error

### stderr
```
the-cmd: Unknown option: --zoinks

the-cmd -- This is the short
help for the command.
the-cmd [--help | -h]
```

### exit: 1
