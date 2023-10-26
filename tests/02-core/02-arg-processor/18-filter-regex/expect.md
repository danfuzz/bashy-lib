## nop filter, empty value

### stdout
```
value: ''
```

### exit: 0

- - - - - - - - - -

## nop filter, non-empty value

### stdout
```
value: beep
```

### exit: 0

- - - - - - - - - -

## "non-empty" filter, empty value

### stderr
```
the-cmd: Invalid value for option --non-empty: 

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## "non-empty" filter, non-empty value

### stdout
```
value: beep
```

### exit: 0

- - - - - - - - - -

## single-quotes in filter, matching value

### stdout
```
value: $'beep \'x\' boop'
```

### exit: 0

- - - - - - - - - -

## single-quotes in filter, non-matching value

### stderr
```
the-cmd: Invalid value for option --looks-like-sq-string: beep x boop

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## double-quotes in filter, matching value

### stdout
```
value: 'beep "x" boop'
```

### exit: 0

- - - - - - - - - -

## double-quotes in filter, non-matching value

### stderr
```
the-cmd: Invalid value for option --looks-like-dq-string: beep x boop

the-cmd -- test command
```

### exit: 1

- - - - - - - - - -

## dollar-substitution-looking thing in filter, matching value

### stdout
```
value: 'yes abc'
```

### exit: 0

- - - - - - - - - -

## dollar-substitution-looking thing in filter, non-matching value

### stderr
```
the-cmd: Invalid value for option --looks-like-dollar: no abczz

the-cmd -- test command
```

### exit: 1
