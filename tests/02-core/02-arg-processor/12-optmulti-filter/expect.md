## passed multi-value option, no values

### stdout
```
Count: 0
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, one matching value

### stdout
```
Count: 1
  0: 123x789z
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, one non-matching value

### stderr
```
the-cmd: Invalid value for option --items[]: 123789

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed multi-value option, two matching values

### stdout
```
Count: 2
  0: xz
  1: blorpx-z
```

### exit: 0

- - - - - - - - - -

## passed multi-value option, first matching, second not

### stderr
```
the-cmd: Invalid value for option --items[]: blorp

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## passed multi-value option, first non-matching, second matching

### stderr
```
the-cmd: Invalid value for option --items[]: beep

the-cmd -- test command
```

### exit: 1
