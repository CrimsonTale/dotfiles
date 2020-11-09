local awful = require("awful")

local autostart = {}

awful.spawn.with_shell("wal -R")
awful.spawn.with_shell("nitrogen --restore")
awful.spawn.with_shell("razer-cli -e reactive -a")
awful.spawn.with_shell("picom --experimental-backends -b")
-- awful.spawn.with_shell("redshift -l 1.3521:103.8198")
