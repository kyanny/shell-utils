# column-to-row


## [README.md](./README.md)

```
# column-to-row


## [perl.sh](./perl.sh)

```
#!/usr/bin/env bash

echo "  UID   PID  PPID   C STIME   TTY           TIME CMD" | perl -anle 'print join "\n", @F'

```

## [xargs.sh](./xargs.sh)

```
#!/usr/bin/env bash

echo "  UID   PID  PPID   C STIME   TTY           TIME CMD" | xargs -n 1

```


```

## [perl.sh](./perl.sh)

```
#!/usr/bin/env bash

echo "  UID   PID  PPID   C STIME   TTY           TIME CMD" | perl -anle 'print join "\n", @F'

```

## [xargs.sh](./xargs.sh)

```
#!/usr/bin/env bash
# ref: https://unix.stackexchange.com/questions/455215/convert-column-into-row
echo "  UID   PID  PPID   C STIME   TTY           TIME CMD" | xargs -n 1

```

