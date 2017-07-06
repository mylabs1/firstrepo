#!/usr/bin/expect
#for server in `awk '/HP/ {print $1}' mach_names`
#set f [open "mach_names"]
set server [ exec cat mach_names]
      spawn ssh -o StrictHostKeyChecking=no -q -t root@$server passwd akarra
      expect "Old password"
      send "PASSWORD\r"
      expect "NEW UNIX password:"
      send "PASSWORD\r"
      expect "Retype new UNIX password"
      send "PASSWORD\r"
      exit 
