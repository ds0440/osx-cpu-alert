cp cpu_alert.rb "/usr/local/bin/cpu_alert.rb"

cp is.iceton.cpu_alert.plist ~/"Library/LaunchAgents/is.iceton.cpu_alert.plist"

launchctl load ~/"Library/LaunchAgents/is.iceton.cpu_alert.plist"