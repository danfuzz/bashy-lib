## no args or options passed

### stderr
```
the-cmd: Missing required option from set: --zero --one --two --three

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed `--`

### stderr
```
the-cmd: Missing required option from set: --zero --one --two --three

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed positional arg

### stderr
```
the-cmd: Positional arguments are not allowed.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed long choice with no defined value or short form

### stdout
```
what: zero
```

### exit: 0

- - - - - - - - - -

## passed long choice with short form but no defined value

### stdout
```
what: one
```

### exit: 0

- - - - - - - - - -

## passed short choice with no defined value

### stdout
```
what: one
```

### exit: 0

- - - - - - - - - -

## passed long choice with short form and defined value

### stdout
```
what: 2
```

### exit: 0

- - - - - - - - - -

## passed short choice with defined value

### stdout
```
what: 2
```

### exit: 0

- - - - - - - - - -

## passed long choice with defined value but no short form

### stdout
```
what: 3
```

### exit: 0

- - - - - - - - - -

## passed two choices from the same set

### stdout
```
what: 2
```

### exit: 0

- - - - - - - - - -

## passed three choices from the same set

### stdout
```
what: 3
```

### exit: 0

- - - - - - - - - -

## passed value to choice

### stderr
```
the-cmd: Value not allowed for option --one.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed two values to choice

### stderr
```
the-cmd: Value not allowed for option --one.

the-cmd -- test command
```

### exit: 1
