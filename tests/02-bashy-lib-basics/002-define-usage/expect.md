## short

### stdout
```
(no exit expected)
```

### stderr
```
This is an error!

the-cmd -- This is the short
help for the command.
the-cmd [--help | -h]
```

### exit: 0

- - - - - - - - - -

## long

### stdout
```
(no exit expected)
```

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

## error 1

### stderr
```
This is an error!

the-cmd -- This is the short
help for the command.
the-cmd [--help | -h]
```

### exit: 1

- - - - - - - - - -

## error 99

### stderr
```
This is an error!

the-cmd -- This is the short
help for the command.
the-cmd [--help | -h]
```

### exit: 99
