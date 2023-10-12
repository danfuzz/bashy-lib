## no args or options passed

### stderr
```
the-cmd: Missing required option --item.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed `--`

### stderr
```
the-cmd: Missing required option --item.

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

## passed required value option, empty value

### stdout
```
item: ''
```

### exit: 0

- - - - - - - - - -

## passed required value option, non-empty value

### stdout
```
item: kitten
```

### exit: 0

- - - - - - - - - -

## passed two values to (single) value option

### stderr
```
the-cmd: Too many values for option --item.

the-cmd -- test command
```

### exit: 1
