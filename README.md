# osx-cpu-alert
Creates a notification if load (CPU usage) is above a maximum (for Mac OS X). By default load will be checked every 30 seconds.

## Notes
The log contains the full cmdilne args for the process captured. cmdline args can contain secrets in some cases

## Config & install
1. Change the `max_load` value in `cpu_alert.rb` to your desired level. Above 3ish should be high load
2. Run the install shell script (It is very simple please check it out for yourself)

## Uninstall
1. Run the uninstall script