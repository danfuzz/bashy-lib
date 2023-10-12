## no args or options passed

### stdout
```
color: transparent
item: nothing
```

### exit: 0

- - - - - - - - - -

## passed one positional arg, matching filter

### stdout
```
color: green
item: nothing
```

### exit: 0

- - - - - - - - - -

## passed one positional arg, not matching filter

### stderr
```
the-cmd: Invalid value for argument <color>: fleep?

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed two positional args, both matching

### stdout
```
color: calico
item: kitten
```

### exit: 0

- - - - - - - - - -

## passed two positional args, first matching and second not

### stderr
```
the-cmd: Invalid value for argument <item>: wrench

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed two positional args, first non-matching and second matching

### stderr
```
the-cmd: Invalid value for argument <color>: 88

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed two positional args, neither matching

### stderr
```
the-cmd: Invalid value for argument <color>: @
Invalid value for argument <item>: crumpet

the-cmd -- test command
```

### exit: 1
