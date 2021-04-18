# easy-bash-killer
Bash script to terminate a process with generic naming on windows and linux machines machines.

This is designed to simplify the command to kill a process. Instead using of taskkill/pkill and remembering the application specifics you can now just use a generic value which you can customise to your preference.

## Examples
```
bash /path/to/file/killer.sh

bash /path/to/file/killer.sh appName
```

Or alternatively...

```
alias killer = "bash /path/to/file/killer.sh"

killer appName
```

