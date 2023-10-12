## no args or options passed

### stdout
```
item: ''
color: ''
```

### exit: 0

- - - - - - - - - -

## passed value option with filter, matching value

### stdout
```
item: good\ kitty
color: ''
```

### exit: 0

- - - - - - - - - -

## passed value option with filter, non-matching value

### stderr
```
the-cmd: Invalid value for option --item: bad kitty

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed value option with enum, matching value

### stdout
```
item: ''
color: green
```

### exit: 0

- - - - - - - - - -

## passed value option with enum, non-matching value

### stderr
```
the-cmd: Invalid value for option --color: crispy

the-cmd -- test command
```

### exit: 1
