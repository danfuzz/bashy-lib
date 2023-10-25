## nop filter

### stdout
```
value: xyz
```

### exit: 0

- - - - - - - - - -

## simple wrapping filter

### stdout
```
value: \<pdq\>
```

### exit: 0

- - - - - - - - - -

## multiline simple filter

### stdout
```
value: yes\!\!
```

### exit: 0

- - - - - - - - - -

## multiline filter that rejects `a`, given not-`a`

### stdout
```
value: not-a
```

### exit: 0

- - - - - - - - - -

## multiline filter that rejects `a`, given `a`

### stderr
```
the-cmd: Not a!
the-cmd: 
the-cmd -- test command
```

### exit: 1
