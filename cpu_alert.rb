#!/usr/local/bin/ruby

max_load = 3

load = `sysctl -n vm.loadavg`
# One minute average
# move to [2] for 5 minute average
# I didn't want to miss anything so I am loading info for the top few procs
load_1min = load.split(" ")[1].to_f
if load_1min > max_load
  psr = `ps aux -r`.split("\n")
  ps1_raw = psr[1]
  ps2_raw = psr[2]
  ps3_raw = psr[3]
  ps4_raw = psr[5]
  ps5_raw = psr[6]
  ps1_split = ps1_raw.split(" ")
  ps1_basename = File.basename(ps1_split.last)
  f = File.new("#{Dir.home}/Desktop/ps_log.txt", "a")
  f.write("\n-----------Load Avg: #{load_1min}------------\n#{ps1_raw}\n#{ps2_raw}\n#{ps3_raw}\n#{ps4_raw}\n#{ps5_raw}\n---------------end-------------------")
  `osascript -e 'display notification "#{load_1min} load > #{max_load} max\n#{ps1_split[2]}% #{ps1_basename}" with title "High Load"'`
  
end
