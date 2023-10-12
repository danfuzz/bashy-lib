## no args or options passed

### stdout
```
item: ''
color: red
```

### exit: 0

- - - - - - - - - -

## passed `--`

### stdout
```
item: ''
color: red
```

### exit: 0

- - - - - - - - - -

## passed positional arg

### stderr
```
the-cmd: Positional arguments are not allowed.

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed value option with no default, empty value

### stdout
```
item: ''
color: red
```

### exit: 0

- - - - - - - - - -

## passed value option with no default, non-empty value

### stdout
```
item: kitten
color: red
```

### exit: 0

- - - - - - - - - -

## passed value option with default, empty value

### stdout
```
item: ''
color: ''
```

### exit: 0

- - - - - - - - - -

## passed value option with default, non-empty value

### stdout
```
item: ''
color: blue
```

### exit: 0

- - - - - - - - - -

## passed two value options

### stdout
```
item: puppy
color: purple
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
