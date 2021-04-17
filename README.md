# easy-bash-killer
Bash script to terminate a process with generic naming on windows machines.

This is designed to simplify the command to kill a process. Instead using of taskkill and remembering the image name / PID you can now just use a generic value which you can customise to your preference.

## Examples
```
sh /path/to/file/killer.sh

sh /path/to/file/killer.sh appName
```

Or alternatively...

```
alias killer = "sh /path/to/file/killer.sh"

killer appName
```

Note: only tested on git bash
