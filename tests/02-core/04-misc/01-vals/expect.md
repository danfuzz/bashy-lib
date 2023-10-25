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
Result: space ' more space ' $'yes\nno\n\n' $'\there\tthere'
Length: 4

0: space
1:  more space 
2: yes
no


3: 	here	there
```

### exit: 0

- - - - - - - - - -

## non-alphanumeric non-special characters as arguments

### stdout
```
Result: @ % _ - + = : . /
Length: 9

0: @
1: %
2: _
3: -
4: +
5: =
6: :
7: .
8: /
```

### exit: 0

- - - - - - - - - -

## special characters (non-bracket-ish) as arguments

### stdout
```
Result: '"' $'\'' ';' '&' '|' '$' '?' '!' '*' '`' '#' % '^' '\' ','
Length: 15

0: "
1: '
2: ;
3: &
4: |
5: $
6: ?
7: !
8: *
9: `
10: #
11: %
12: ^
13: \
14: ,
```

### exit: 0

- - - - - - - - - -

## special characters (bracket-ish) as arguments

### stdout
```
Result: '[' ']' '{' '}' '(' ')' '<' '>'
Length: 8

0: [
1: ]
2: {
3: }
4: (
5: )
6: <
7: >
```

### exit: 0

- - - - - - - - - -

## special characters in the middle of arguments

### stdout
```
Result: 'a"b' $'a\'b' 'a;b' 'a&b' 'a|b' 'a$b' 'a?b' 'a!b' 'a*b'
Length: 9

0: a"b
1: a'b
2: a;b
3: a&b
4: a|b
5: a$b
6: a?b
7: a!b
8: a*b
```

### exit: 0

- - - - - - - - - -

## special characters surrounding arguments

### stdout
```
Result: '[ab]' '{ab}' '(ab)' '<ab>'
Length: 4

0: [ab]
1: {ab}
2: (ab)
3: <ab>
```

### exit: 0
