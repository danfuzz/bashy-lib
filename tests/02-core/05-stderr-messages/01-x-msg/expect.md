## error-msg

### stdout
```
$ error-msg --status
1

$ error-msg --status
0

$ error-msg --status
1

$ error-msg --status
0

$ error-msg --status
1


```

### stderr
```
the-cmd: First regular message.
Another message but with multiple arguments.
<Using>
<--exec>
<to call>
<another command.>
the-cmd:30: I am on line 30.
the-cmd:26: My caller is on line 26.
the-cmd:22: _Their_ caller is on line 22.
```

### exit: 0

- - - - - - - - - -

## info-msg

### stdout
```
$ info-msg --status
1

$ info-msg --status
0

$ info-msg --status
1

$ info-msg --status
0

$ info-msg --status
1


```

### stderr
```
First regular message.
Another message but with multiple arguments.
<Using>
<--exec>
<to call>
<another command.>
the-cmd:30: I am on line 30.
the-cmd:26: My caller is on line 26.
the-cmd:22: _Their_ caller is on line 22.
```

### exit: 0

- - - - - - - - - -

## progress-msg

### stdout
```
$ progress-msg --status
1

$ progress-msg --status
0

$ progress-msg --status
1

$ progress-msg --status
0

$ progress-msg --status
1


```

### stderr
```
First regular message.
Another message but with multiple arguments.
<Using>
<--exec>
<to call>
<another command.>
the-cmd:30: I am on line 30.
the-cmd:26: My caller is on line 26.
the-cmd:22: _Their_ caller is on line 22.
```

### exit: 0
