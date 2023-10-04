## short

### stderr
```
This is not actually an error! (But we can pretend.)

the-cmd -- This is the short
help for the command.
the-cmd another-option-variant
(no exit expected; should see this)
```

### exit: 0

- - - - - - - - - -

## long

### stderr
```
the-cmd -- This is the short
help for the command.

This is the longer help.

the-cmd another-option-variant

And more help about that.
(no exit expected; should see this)
```

### exit: 0

- - - - - - - - - -

## error 1

### stderr
```
This is an error!

the-cmd -- This is the short
help for the command.
the-cmd another-option-variant
```

### exit: 1

- - - - - - - - - -

## error 99

### stderr
```
This is an error!

the-cmd -- This is the short
help for the command.
the-cmd another-option-variant
```

### exit: 99
