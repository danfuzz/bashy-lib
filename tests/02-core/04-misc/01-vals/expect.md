## no args

### stdout
```
Empty result.
Length: 0
```

### exit: 0

- - - - - - - - - -

## one arg

### stdout
```
Result: hello
Length: 1

0: hello
```

### exit: 0

- - - - - - - - - -

## two args

### stdout
```
Result: how goes
Length: 2

0: how
1: goes
```

### exit: 0

- - - - - - - - - -

## three args

### stdout
```
Result: Things are awesome.
Length: 3

0: Things
1: are
2: awesome.
```

### exit: 0

- - - - - - - - - -

## space-type stuff in arguments

### stdout
```
Result: space \ more\ space\  $'yes\nno\n\n' $'\there\tthere'
Length: 4

0: space
1:  more space 
2: yes
no


3: 	here	there
```

### exit: 0

- - - - - - - - - -

## special characters in arguments

### stdout
```
Result: \& \| \( \) \< \> \? \! \* \[ \] \{ \}
Length: 13

0: &
1: |
2: (
3: )
4: <
5: >
6: ?
7: !
8: *
9: [
10: ]
11: {
12: }
```

### exit: 0
